package dao;


import dto.UsersDTO;
import util.DBHelper;
import util.Sql;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UsersDAO extends DBHelper{
	
	public final static UsersDAO INSTANCE = new UsersDAO(); 
	
	public static UsersDAO getInstance() {
		return INSTANCE;
	}
	
	private UsersDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	
	
	

    
    // 회원가입
    public void insert(UsersDTO dto) {
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.INSERT_USERS);
			psmt.setInt(1, dto.getUs_id());
			psmt.setString(2, dto.getUs_pass());
			psmt.setString(3, dto.getUs_name());
			psmt.setString(4, dto.getUs_hp());
			psmt.setString(5, dto.getUs_email());
			psmt.setString(6, dto.getUs_addr());
			
			psmt.executeUpdate();
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
    // 중복 체크 ( 아이디, 휴대폰, 이메일)
	public int selectCount(String col, String value) {
		
		int count = 0;
		
		try {
			conn = getConnection();
			
			StringBuilder sql = new StringBuilder(Sql.SELECT_COUNT);
			
			if(col.equals("user_id")) {
				sql.append(Sql.WHERE_US_ID);
			}else if(col.equals("user_hp")) {
				sql.append(Sql.WHERE_US_HP);
			}else if(col.equals("user_email")) {
				sql.append(Sql.WHERE_US_EMAIL);
			}
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, value);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			closeAll();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	
	}
	// 로그인 성공 시 UsersDTO 객체 전체를 반환
    public UsersDTO loginAndGetInfo(String userId, String password) {
      
        String sql = "SELECT * FROM users WHERE us_id = ? AND us_pass = ?";
        UsersDTO dto = null;
        
        
        try {
        	
        	conn = getConnection();
	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, userId);
	        psmt.setString(2, password);
	            
	        rs = psmt.executeQuery();
	        if (rs.next()) {
	            
	         	dto = new UsersDTO();
	             	
	            dto.setUs_id(rs.getInt(1));
	            dto.setUs_pass(rs.getString(2));
	            dto.setUs_name(rs.getString(3));
	            dto.setUs_hp(rs.getString(4));
	            dto.setUs_email(rs.getString(5));
	            dto.setUs_addr(rs.getString(6));
                        
            }
                
        } catch(Exception e) {
          	e.printStackTrace();
        }
        return dto;
    }


	public UsersDTO selectCount(UsersDTO dto) {
		
		return null;
	}	
	
}