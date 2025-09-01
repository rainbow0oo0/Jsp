package dao;

import util.DBHelper;

public class ArticeDAO extends DBHelper{
	
	private final static ArticeDAO INSTANCE = new ArticeDAO();
	public static ArticeDAO getInstance() {
		return INSTANCE;
	}
	private ArticeDAO() {}
	
	

}
