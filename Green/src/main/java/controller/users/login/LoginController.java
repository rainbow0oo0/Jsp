package controller.users.login;

import java.io.IOException;

import dao.login.StudentDAO;
import dao.login.ProfessorDAO;
import dao.login.UsersDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/users/login.jsp");
    	dispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

    	String loginType = request.getParameter("login_type");
    			

        String userId = request.getParameter("id");
        String userPw = request.getParameter("pw");
        Object loggedInUser = null; 

        if (userId == null || userId.isEmpty() || userPw == null || userPw.isEmpty() || loginType == null) {

            response.sendRedirect("/login.do");
            return;
        }



            if ("student".equals(loginType)) {
                StudentDAO studentDao = StudentDAO.getInstance();
                loggedInUser = studentDao.loginAndGetInfo(userId, userPw);
            } else if ("staff".equals(loginType)) {
                ProfessorDAO professorDao = ProfessorDAO.getInstance();
                loggedInUser = professorDao.loginAndGetInfo(userId, userPw);
            } else if ("general".equals(loginType)) {
                UsersDAO userDao = UsersDAO.getInstance();
                loggedInUser = userDao.loginAndGetInfo(userId, userPw);
            }

            if (loggedInUser != null) {
            	System.out.println("로그인 성공!!!");
                HttpSession session = request.getSession();
                // 로그인 성공 시 DTO 객체를 세션에 저장
                session.setAttribute("loggedInUser", loggedInUser);
                response.sendRedirect("/Green/");
            } else {
            	System.out.println("로그인 실패ㅠㅠ");
                response.sendRedirect("/Green/login.do");

            }
    }
}
