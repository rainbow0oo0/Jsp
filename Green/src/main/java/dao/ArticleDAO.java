package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.ArticleDTO;
import dto.DepartmentDTO;
import util.DBHelper;
import util.Sql;


public class ArticleDAO extends DBHelper{	
	
	private final static ArticleDAO INSTANCE = new ArticleDAO();
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public static ArticleDAO getInstance() {
		return INSTANCE;
	}
	
	private ArticleDAO() {}
	
	public int insert(ArticleDTO dto) {
		int id = 0;
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			psmt = conn.prepareStatement(Sql.INSERT_ADMISS_NOTICE); 
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getWriter());
			psmt.executeUpdate();
			
			stmt = conn.createStatement();
			
			rs= stmt.executeQuery(Sql.SELECT_ADMISS_NOTICE_MAX_ID);
			
			if(rs.next()) {
				id=rs.getInt(1);
			}
			
			conn.commit();
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}	
		
		return id;		
	}
	
	//게시글 개수
	public int selectCountTotal() {
		int total = 0;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql.SELECT_ADMISS_NOTICE_COUNT_TOTAL);

			if (rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public ArticleDTO select(int id) {
		return null;
	}
	public List<ArticleDTO> selectAll(int start){
		List<ArticleDTO> dtoList = new ArrayList<ArticleDTO>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_ADMISS_NOTICE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while (rs.next()) {
				ArticleDTO dto = new ArticleDTO();
				dto.setAno(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setFile_cnt(rs.getInt(4));
				dto.setHit_cnt(rs.getInt(5));
				dto.setWriter(rs.getString(6));
				dto.setWdate(rs.getString(7));
				dto.setWdist(rs.getInt(8));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return dtoList;
	}
	public int selectCountSearch(String searchType, String keyword) {
		int total = 0;
		
		 if (searchType == null || searchType.isBlank()) {
		        return selectCountTotal();
		    }
		    
		 StringBuilder sql = new StringBuilder(Sql.SELECT_ADMISS_NOTICE_COUNT_SEARCH);

			if (searchType.equals("title")) {
				sql.append(Sql.SEARCH_WHERE_TITLE);	
			} else if (searchType.equals("content")) {
				sql.append(Sql.SEARCH_WHERE_CONTENT);
			} else if (searchType.equals("writer")) {
				sql.append(Sql.SEARCH_WHERE_WRITER);
			}

			try {
				conn = getConnection();
				psmt = conn.prepareStatement(sql.toString());
				psmt.setString(1, "%" + keyword + "%");

				rs = psmt.executeQuery();

				if (rs.next()) {
					total = rs.getInt(1);
				}
				closeAll();
			} catch (Exception e) {
				logger.error(e.getMessage());
			}

			return total;
	}
	
	public List<ArticleDTO> selectSearch(int start, String searchType, String keyword){
		
		if (searchType == null || searchType.isBlank()) {
	        return selectAll(start);
	}
	 
	List<ArticleDTO> dtoList = new ArrayList<ArticleDTO>();
	StringBuilder sql = new StringBuilder(Sql.SELECT_ADMISS_NOTICE_SEARCH);

	if (searchType.equals("title")) {
		sql.append(Sql.SEARCH_WHERE_TITLE);
	} else if (searchType.equals("content")) {
		sql.append(Sql.SEARCH_WHERE_CONTENT);
	} else if (searchType.equals("writer")) {
		sql.append(Sql.SEARCH_WHERE_WRITER);
	}
	sql.append(Sql.SEARCH_ORDER_ID);
	sql.append(Sql.SEARCH_OFFSET_ROW);

	try {
		conn = getConnection();
		psmt = conn.prepareStatement(sql.toString());
		psmt.setString(1, "%" + keyword + "%");
		psmt.setInt(2, start);

		rs = psmt.executeQuery();
		while (rs.next()) {
			ArticleDTO dto = new ArticleDTO();
			dto.setAno(rs.getInt(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setFile_cnt(rs.getInt(4));
			dto.setHit_cnt(rs.getInt(5));
			dto.setWriter(rs.getString(6));
			dto.setWdate(rs.getString(7));
			dto.setWdist(rs.getInt(8));
			
			dtoList.add(dto);
		}
		closeAll();
	} catch (Exception e) {
		logger.error(e.getMessage());
	}
	return dtoList;
	}
	public void update(ArticleDTO dto) {

	}

	public void delete(int id) {

	}
	
	public List<ArticleDTO> selectPage(int page, int pageSize, int wdist, String searchType, String keyword) {
	    List<ArticleDTO> dtoList = new ArrayList<>();
	    int offset = (page - 1) * pageSize;
	    
	    StringBuilder sql = new StringBuilder(Sql.SELECT_ADMISS_NOTICE_SEARCH);
	    
	    if ((searchType != null) && (!(searchType.isBlank()))) {
	    	
	    	if (searchType.equals("title")) {
				sql.append(Sql.SEARCH_WHERE_TITLE);
			} else if (searchType.equals("content")) {
				sql.append(Sql.SEARCH_WHERE_CONTENT);
			} else if (searchType.equals("writer")) {
				sql.append(Sql.SEARCH_WHERE_WRITER);
			}
		} 

		sql.append(Sql.SEARCH_ORDER_ID);
		sql.append(Sql.SEARCH_OFFSET_ROW);


	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(sql.toString());
	        System.out.println(sql.toString());
	        System.out.println("searchtype = " + searchType);
	        if (searchType == null || searchType.isBlank()) {
	        	psmt.setInt(1, wdist);
	        	psmt.setInt(2, pageSize);
		        psmt.setInt(3, offset);
			}else {
				psmt.setInt(1, wdist);
				psmt.setString(2, "%" + keyword + "%");
	        	psmt.setInt(3, pageSize);
		        psmt.setInt(4, offset);
			}
	       

	        rs = psmt.executeQuery();
	        while (rs.next()) {
	        	ArticleDTO dto = new ArticleDTO();
				dto.setAno(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setFile_cnt(rs.getInt(4));
				dto.setHit_cnt(rs.getInt(5));
				dto.setWriter(rs.getString(6));
				dto.setWdate(rs.getString(7));
				dto.setWdist(rs.getInt(8));
				
				dtoList.add(dto);
			
	        }
	        closeAll();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return dtoList;
	}
	
	public int countArts(int wdist, String searchType, String keyword) {
		 StringBuilder sql = new StringBuilder(Sql.SELECT_ADMISS_NOTICE_COUNT_BY_DIST);

		if (searchType!=null && !(searchType.isBlank())) {
			
			if (searchType.equals("title")) {
				sql.append(Sql.SEARCH_WHERE_TITLE);	
			} else if (searchType.equals("content")) {
				sql.append(Sql.SEARCH_WHERE_CONTENT);
			} else if (searchType.equals("writer")) {
				sql.append(Sql.SEARCH_WHERE_WRITER);
			}
		}
		
		
	    int count = 0;
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(sql.toString());
	        if (searchType == null || searchType.isBlank()) {
	        	psmt.setInt(1, wdist);
			}else {
				psmt.setInt(1, wdist);
				psmt.setString(2, "%" + keyword + "%");
			}
	        
	        rs = psmt.executeQuery();
	        
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	        
	        closeAll();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return count;
	}

}
