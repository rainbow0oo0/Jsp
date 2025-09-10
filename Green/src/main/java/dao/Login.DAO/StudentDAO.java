package dao.login;

import dto.StudentDTO;
import util.DBHelper;

import java.sql.SQLException;

public class StudentDAO extends DBHelper {
    private static StudentDAO instance;


    private StudentDAO() {}
    public static StudentDAO getInstance() {
        if (instance == null) {
            instance = new StudentDAO();
        }
        return instance;
    }


    public StudentDTO loginAndGetInfo(String studentId, String password) {
    	
    	StudentDTO dto = null;

        
        
        try {
        	String sql = "SELECT * FROM student WHERE std_no = ? AND substr(std_jumin, 1, 6) = ?";
        	
        	conn = getConnection();
        	psmt = conn.prepareStatement(sql);
        	psmt.setString(1, studentId);
        	psmt.setString(2, password);
        	
        	rs = psmt.executeQuery();
        	
        	if (rs.next()) {
                                   	
        		dto = new StudentDTO();
                	
               	dto.setStd_no(rs.getString(1));
               	dto.setStd_jumin(rs.getString(2));
               	dto.setStd_name(rs.getString(3));
               	dto.setStd_eng_name(rs.getString(4));
               	dto.setStd_gen(rs.getString(5));
               	dto.setStd_nation(rs.getString(6));
               	dto.setStd_hp(rs.getString(7));
               	dto.setStd_email(rs.getString(8));
                dto.setStd_addr(rs.getString(9));
                dto.setDep_no(rs.getInt(10));
                dto.setPro_no(rs.getInt(11));
                dto.setStd_seq(rs.getInt(12));
                dto.setStd_ent(rs.getInt(13));
                dto.setStd_ent_grade(rs.getInt(14));
                dto.setStd_ent_sem(rs.getInt(15));
                dto.setStd_status(rs.getString(16));
                	
                }
        } catch(Exception e) {
        	e.printStackTrace();
        }
        return dto;

	}
}