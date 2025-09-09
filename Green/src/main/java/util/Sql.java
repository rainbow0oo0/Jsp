package util;

public class Sql {
	
	/* 수강신청 */
	public static final String SELECT_COURSES =
		"SELECT " 
		+ " d.dep_name, "
	    + " c.cs_dist, "
	    + " c.cs_grade, "
		+ " c.cs_id, "
	    + " c.cs_name, " 
		+ " c.cs_credit, "
	    + " p.pro_name, "
	    + "(select count(*) from enrollment e where e.cs_id = c.cs_id) as cs_enroll"	    
		+ " FROM course c " 
		+ " join department d on c.dep_no = d.dep_no "
		+ " join professor p on c.pro_no = p.pro_no";	
	
}