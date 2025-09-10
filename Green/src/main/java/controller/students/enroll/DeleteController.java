package controller.students.enroll;

import java.io.IOException;

import dao.CourseDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/students/course/delete.do")
public class DeleteController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String enNo = req.getParameter("en_no");
		
		CourseDAO dao= CourseDAO.getInstance();
		dao.deleteErollment(enNo);
		
		resp.sendRedirect(req.getContextPath() + "students/course/list.do");
		
	}
}
