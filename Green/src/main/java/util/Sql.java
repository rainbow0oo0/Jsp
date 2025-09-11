package util;

public class Sql {
	
	public static final String SELECT_DEPARTMENTS_BY_COLLEGE = "select dep_name, dep_king, dep_hp from department where college=?";
	
	public static final String DEPARTMENT_INSERT = "insert into department (dep_no, college, dep_name, dep_eng_name, dep_est_date, dep_king, dep_hp, dep_office) values (?,?,?,?,?,?,?,?)";
	
	public static final String DEPARTMENT_FIND_ALL = "SELECT "
			+ "	d.dep_no, "
			+ "    college, "
			+ "    dep_name, "
			+ "    dep_king, "
			+ "    dep_hp, "
			+ "    count(p.pro_no), "
			+ "    count(std_no) "
			+ "FROM department d "
			+ "left join professor p using (dep_no) "
			+ "left join student s using (pro_no) "
			+ "group by dep_no, college, dep_name, dep_king, dep_hp";
			
	public static final String DEPARTMENT_FIND_PAGE = "SELECT d.dep_no, "
			+ "       d.college, "
			+ "       d.dep_name, "
			+ "       d.dep_king, "
			+ "       d.dep_hp, "
			+ "       COALESCE(p.pro_count, 0) AS pro_num, "
			+ "       COALESCE(s.std_count, 0) AS std_num, "
			+ "       COALESCE(c.cs_count, 0) AS cs_num "
			+ "FROM department d "
			+ "LEFT JOIN ( "
			+ "    SELECT dep_no, COUNT(*) AS pro_count "
			+ "    FROM professor "
			+ "    GROUP BY dep_no "
			+ ") p ON d.dep_no = p.dep_no "
			+ "LEFT JOIN ( "
			+ "    SELECT dep_no, COUNT(*) AS std_count "
			+ "    FROM student "
			+ "    GROUP BY dep_no "
			+ ") s ON d.dep_no = s.dep_no "
			+ "LEFT JOIN ( "
			+ "    SELECT dep_no, COUNT(*) AS cs_count "
			+ "    FROM course "
			+ "    GROUP BY dep_no "
			+ ") c ON d.dep_no = c.dep_no "
			+ "LIMIT ? OFFSET ?";
			
		
	public static final String DEPARTMENT_COUNT = "SELECT COUNT(*) FROM department";
	

	
	
	
	
	// users - register 회원가입 
	public static final String INSERT_USERS = "INSERT INTO users (US_ID, US_PASS, US_NAME, US_HP, US_EMAIL, US_ADDR) " 
			+ "VALUES (?,  SHA2(?, 256), ?, ?, ?, ?)"; 
	
	public static final String SELECT_COUNT = "SELECT COUNT(*) FROM USERS";
	public static final String WHERE_US_ID = "WHERE US_ID=?";
	public static final String WHERE_US_HP = "WHERE US_HP=?";
	public static final String WHERE_US_EMAIL = "WHERE US_EMAIL=?";
	
	public static final String SELECT_USERS_BY_PASS = "SELECT * FROM USERS WHERE US_ID=? AND US_PASS=STANDARD_HASH(?, 'SHA256')";



	// ID MAX 구하기
    public static final String SELECT_ADMISS_NOTICE_MAX_ID = "SELECT MAX(ID) FROM TB_ADMISS_NOTICE";
    // 글 삽입
    public static final String INSERT_ADMISS_NOTICE = "INSERT INTO TB_ADMISS_NOTICE (TITLE, CONTENT, WRITER, CREATED_AT, VIEWS) VALUES (?, ?, ?, CURDATE(), 0)";
    // 모든 글 가져오기
    public static final String SELECT_ADMISS_NOTICE_ALL = "SELECT * FROM TB_ADMISS_NOTICE "
                                                            + "ORDER BY ID DESC "
                                                            + "LIMIT 3 OFFSET ?";
	public static final String SELECT_ARTICLE_WITH_FILE = "SELECT * FROM article WHERE ano=?";
    // 글 개수 구하기
    public static final String SELECT_ADMISS_NOTICE_COUNT_TOTAL = "SELECT COUNT(*) FROM TB_ADMISS_NOTICE";
    public static final String SELECT_ADMISS_NOTICE_COUNT_BY_DIST = "SELECT COUNT(*) FROM Article where wdist=? ";

    // 검색
    public static final String SELECT_ADMISS_NOTICE_SEARCH = "SELECT * FROM Article WHERE wdist=? ";
    public static final String SELECT_ADMISS_NOTICE_COUNT_SEARCH = "SELECT COUNT(*) FROM Article ";
    public static final String SEARCH_WHERE_TITLE = "and TITLE LIKE ? ";
    public static final String SEARCH_WHERE_CONTENT = "and CONTENT LIKE ? ";
    public static final String SEARCH_WHERE_WRITER = "and WRITER LIKE ? ";
    public static final String SEARCH_ORDER_ID = "ORDER BY ano DESC ";
    public static final String SEARCH_OFFSET_ROW = "LIMIT ? OFFSET ?";

	// 수강신청
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
	
	// 수강신청내역
	public static final String SELECT_ENROLLMENTS =
		    "SELECT "
		  + " c.cs_id, "
		  + " c.cs_name, "
		  + " c.cs_grade, "
		  + " p.pro_name, "
		  + " c.cs_credit, "
		  + " c.cs_dist, "
		  + " c.cs_weekday, "
		  + " c.cs_room "
		  + "FROM enrollment e "
		  + "JOIN course c ON e.cs_id = c.cs_id "
		  + "JOIN professor p ON c.pro_no = p.pro_no";


	// 교수
	public static final String SELECT_PROFESSOR_LIST = "select pro_no, pro_name, pro_jumin, pro_hp, pro_email, d.dep_name, pro_position, pro_status, pro_appoint_date "
			+ "from professor p join department d on p.dep_no = d.dep_no";
	
	public static final String INSERT_PROFESSOR = "insert into professor (pro_jumin, pro_name, pro_eng_name, pro_gen, pro_nation, pro_hp, pro_email, pro_addr, pro_univ, pro_grad_date, pro_degree, dep_no, pro_appoint_date) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
}