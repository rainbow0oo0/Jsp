package service;

import java.util.List;

import dao.ProfessorDAO;
import dto.ProfessorDTO;

public enum ProfessorService {
	INSTANCE;
	private ProfessorDAO dao = ProfessorDAO.getInstance();
	
	public List<ProfessorDTO> findProList(){
		return dao.selectAll();
	}
	
	public void register(ProfessorDTO dto) {
		dao.insert(dto);
	}
	
}
