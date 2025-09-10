package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.CourseDTO;
import util.DBHelper;
import util.Sql;

public class CourseDAO extends DBHelper {
	
	private static CourseDAO instance = new CourseDAO();
	
	private CourseDAO() {}
	
	public static CourseDAO getInstance() {
		return instance;
	}

	/* 수강신청 */
    public List<CourseDTO> selectCourses() {
        List<CourseDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;

        try {
        	conn = getConnection();
            psmt = conn.prepareStatement(Sql.SELECT_COURSES);
            rs = psmt.executeQuery();

            while (rs.next()) {
                CourseDTO dto = new CourseDTO();
                dto.setDep_name(rs.getString(1));
                dto.setCs_dist(rs.getString(2));
                dto.setCs_grade(rs.getInt(3));
                dto.setCs_id(rs.getLong(4));
                dto.setCs_name(rs.getString(5));
                dto.setCs_credit(rs.getInt(6));
                dto.setPro_name(rs.getString(7));
                dto.setCs_std_now(rs.getInt(8));               

                list.add(dto);
            }
            if(rs != null) rs.close();
            if(psmt != null) psmt.close();
            if(conn != null) conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        } 

        return list;
    }
    
    /* 수강신청내역 */
    public List<CourseDTO> selectEnrollments() {
        List<CourseDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;

        try {
        	conn = getConnection();
            psmt = conn.prepareStatement(Sql.SELECT_COURSES);
            rs = psmt.executeQuery();

            while (rs.next()) {
            	CourseDTO dto = new CourseDTO();
            	dto.setCs_id(rs.getInt(1));
            	dto.setCs_name(rs.getString(2));
            	dto.setCs_grade(rs.getInt(3));
            	dto.setPro_name(rs.getString(4));
            	dto.setCs_credit(rs.getInt(5));
            	dto.setCs_dist(rs.getString(6));
            	dto.setCs_weekday(rs.getString(7));
            	dto.setCs_room(rs.getString(8));                              

                list.add(dto);
            }
            if(rs != null) rs.close();
            if(psmt != null) psmt.close();
            if(conn != null) conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        } 

        return list;
    }
    
    /* 수강취소 */
    public void deleEnrollment(String enNo) {
    	Connection conn = null;
    	PreparedStatement psmt = null;
    	
    	try {
    		conn = getConnection();
    		String sql = "DELETE FROM enrollment WHERE en_no = ?";
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, enNo);
    		psmt.executeUpdate();
    		
    		if (psmt != null) psmt.close();
    		if (conn != null) conn.close();   		
    		
    	}catch (Exception e){
    		e.printStackTrace();
    	}
    	
    	
    }
    
    /* ?? */
	public int insertEnrollment(int int1, String stdNo) {
		
		
		return 0;
	}    
    
}
