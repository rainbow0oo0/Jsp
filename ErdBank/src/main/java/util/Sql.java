package util;

public class Sql {
	
	// customer
	public final static String SELECT_CUSTOMER_BY_NO_AND_NAME = "SELECT * FROM BANK_CUSTOMER WHERE C_NO=? AND C_NAME=?";
	
	// account
	public final static String SELECT_ALL_ACCOUNT_WITH_NAME = "select a.*, c.c_name"
															+ "from bank_account a"
															+ "join bank_customer c on a.a_c_no = c.c_no";
	
	public static final String UPDATE_ACCOUNT_PLUS = "UPDATE BANK_ACCOUNT SET A_BALANCE = A_BALANCE + ? WHERE A_NO=?";
	public static final String UPDATE_ACCOUNT_MINUS = "UPDATE BANK_ACCOUNT SET A_BALANCE = A_BALANCE + ? WHERE A_NO=?";
	
	// transaction
	// public static static String
}
