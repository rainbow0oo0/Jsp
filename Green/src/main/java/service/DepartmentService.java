package service;

import java.util.List;

import dao.DepartmentDAO;
import dto.DepartmentDTO;

public enum DepartmentService {
	INSTANCE;
	private DepartmentDAO dao = DepartmentDAO.getInstance();
	
	public List<DepartmentDTO> findByCollege(String college){
		return dao.selectByCollege(college);
	}
	
	public void register(DepartmentDTO dto) {
		dao.insert(dto);
	}
	
	public List<DepartmentDTO> findAll() {
		return dao.selectAll();
	}
	public List<DepartmentDTO> findPage(int page, int pagesize) {
		return dao.selectPage(page, pagesize);
	}
	
	public int countPage() {
		return dao.countDeps();
	}
	
}
