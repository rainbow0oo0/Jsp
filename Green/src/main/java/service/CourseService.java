package service;

import java.util.List;

import dao.CourseDAO;
import dto.CourseDTO;

public class CourseService {
	private CourseDAO  dao = CourseDAO.getInstance();
	
	public List<CourseDTO> getCourseList() {
		return dao.selectCourses();
	}

}
