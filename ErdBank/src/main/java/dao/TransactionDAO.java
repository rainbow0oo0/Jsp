package dao;

import java.util.List;

import dto.TransactionDTO;
import util.DBHelper;

public class TransactionDAO extends DBHelper{

	private static final TransactionDAO INSTANCE = new TransactionDAO();
	public static TransactionDAO getInstance() {
		return INSTANCE;
	}
	
	private TransactionDAO() {}
	
	public void insertAndUpdate(TransactionDTO dto) {
		
		
	}
	
	// ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ
	
	
	
	public TransactionDTO select(int t_no) {
		return null;
	}
	public List<TransactionDTO> selectAll(){
		return null;
	}
	public void update(TransactionDTO dto) {}
	public void delete(int t_no) {}
	
}
