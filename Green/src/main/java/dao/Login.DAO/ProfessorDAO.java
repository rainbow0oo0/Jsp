package dao.login;

import dto.ProfessorDTO;
import util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProfessorDAO extends DBHelper {
    private static ProfessorDAO instance;

    private ProfessorDAO() {}
    public static ProfessorDAO getInstance() {
        if (instance == null) {
            instance = new ProfessorDAO();
            
        }
        return instance;
    }

    // 로그인 성공 시 ProfessorDTO 객체 전체를 반환
    public ProfessorDTO loginAndGetInfo(String professorId, String password) {
    	
        // 모든 필드를 가져오는 SQL 쿼리. DB의 실제 컬럼명과 일치하는지 확인하세요.
    	
    	
        String sql = "SELECT * FROM professor WHERE pro_no = ? AND substr(pro_jumin, 1, 6) = ?";
        ProfessorDTO dto = null;
   
        
        try {
        	
        	conn = getConnection();
        	psmt = conn.prepareStatement(sql);
            psmt.setString(1, professorId);
            psmt.setString(2, password);
            
            
            rs = psmt.executeQuery();
            
            if (rs.next()) {
                // ProfessorDTO의 모든 필드를 매핑하여 객체 생성 후 반환
            	
            	dto = new ProfessorDTO();
            	
            	dto.setPro_no(rs.getInt(1));
            	dto.setPro_jumin(rs.getString(2));
            	dto.setPro_name(rs.getString(3));
            	dto.setPro_eng_name(rs.getString(4));
            	dto.setPro_gen(rs.getString(5));
            	dto.setPro_nation(rs.getString(6));
            	dto.setPro_hp(rs.getString(7));
            	dto.setPro_email(rs.getString(8));
            	dto.setPro_addr(rs.getString(9));
            	dto.setPro_univ(rs.getString(10));
            	dto.setDep_no(rs.getInt(11));
            	dto.setPro_grad_date(rs.getString(12));
            	dto.setPro_degree(rs.getString(13));
            	dto.setPro_appint_date(rs.getString(14));
            	dto.setPro_position(rs.getString(15));
            	dto.setPro_status(rs.getString(16));
            	dto.setPro_seq(rs.getInt(17));
            	
            }
           
        } catch(Exception e) {
        	e.printStackTrace();
        }
        return dto;
    }
}