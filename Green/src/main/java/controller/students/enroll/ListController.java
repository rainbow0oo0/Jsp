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
import jakarta.servlet.http.HttpSession;

@WebServlet("/students/course/list.do")
public class ListController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String stdNo = (String) session.getAttribute("sessStdNo");
		
		if (stdNo == null) {			
			resp.sendRedirect("/Green/login.do");
	        return;
		}
		
		CourseDAO dao = CourseDAO.getInstance();
		List<CourseDTO> list = dao.selectCourses();
		
		req.setAttribute("course", list);	
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/students/enroll_hist.jsp");
		dispatcher.forward(req, resp);	
		
	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {			
		
	}

}

