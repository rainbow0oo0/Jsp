package dao;


import dto.UsersDTO;
import util.DBHelper;
import util.Sql;

public class UsersDAO extends DBHelper{
	
	public final static UsersDAO INSTANCE = new UsersDAO(); 
	
	public static UsersDAO getInstance() {
		return INSTANCE;
	}
	
	private UsersDAO() {}
	
    // 회원가입
    public void insert(UsersDTO dto) {
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.INSERT_USERS);
			psmt.setString(1, dto.getUs_id());
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
	             	
	            dto.setUs_id(rs.getString(1));
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