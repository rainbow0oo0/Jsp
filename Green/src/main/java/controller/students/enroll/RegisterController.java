package controller.students.enroll;

import java.io.IOException;
import java.util.List;

import dao.CourseDAO;
import dto.CourseDTO;
import dto.StudentDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/students/course/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CourseDAO dao = CourseDAO.getInstance();
		List<CourseDTO> courses = dao.selectCourses();
		
		req.setAttribute("courses", courses);	
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/students/enroll.jsp");
		dispatcher.forward(req, resp);		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String csId = req.getParameter("cs_id");

	    HttpSession session = req.getSession();
	    StudentDTO student = (StudentDTO) session.getAttribute("loggedInUser");

	    if (student == null) {
	        resp.sendRedirect("/Green/login.do");
	        return;
	    }	    

	    CourseDAO dao = CourseDAO.getInstance();
	    int result = dao.insertEnrollment(Long.parseLong(csId), student.getStd_no());

	    if (result > 0) {
	        System.out.println("수강신청 완료: 학생=" + student.getStd_no() + ", 과목=" + csId);
	    } else {
	        System.out.println("수강신청 실패: 학생=" + student.getStd_no() + ", 과목=" + csId);
	    }

	    resp.sendRedirect("/Green/students/course/register.do");
	}

}
