package controller.student.course;

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

@WebServlet("/students/course/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CourseDAO dao = CourseDAO.getInstance();
		List<CourseDTO> courses = dao.selectCourses();
		
		req.setAttribute("courses", courses);	
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/students/course_reg.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// req.setCharacterEncoding("utf-8"); 수강신청 insert 로직 추가
		
		String csId = req.getParameter("cs_id");
		System.out.println("수강 신청한 과목 ID: " + csId);
		
		resp.sendRedirect(req.getContextPath() + "/student/course/register.do");
	}

}
