package dao;

import java.util.List;

import dto.AccountDTO;
import util.DBHelper;

public class AccountDAO extends DBHelper {
	
	private static final AccountDAO INSTANCE = new AccountDAO();
	public static AccountDAO getInstance() {
		return INSTANCE;
	}
	
	private AccountDAO() {}
	
	public void insert(AccountDTO dto) {}
	public AccountDTO select(String a_no) {
		return null;
	}
	public List<AccountDTO> selectAll(){
		return null;
	}
	public void update(AccountDTO dto) {}
	public void delete(String a_no) {}

}
