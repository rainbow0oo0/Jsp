package controller.students.enroll;

import java.io.IOException;
import java.util.List;

import dao.CourseDAO;
import dto.CourseDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/students/course/list.do")
public class ListController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CourseDAO dao = CourseDAO.getInstance();
		List<CourseDTO> courses = dao.selectCourses();
		
		req.setAttribute("courses", courses);	
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/students/enroll_hist.jsp");
		dispatcher.forward(req, resp);	
		
	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {			
		
	}

}

