package service;

import java.util.List;

import dao.EnrollDAO;
import dto.EnrollDTO;

public class EnrollService {
	private EnrollDAO  dao = EnrollDAO.getInstance();
	
	public List<EnrollDTO> getCourseList() {
		return dao.selectCourses();
	}

}
