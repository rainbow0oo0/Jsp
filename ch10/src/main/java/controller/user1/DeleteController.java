package controller.user1;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.User1Service;

@WebServlet("/user1/delete.do")
public class DeleteController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private User1Service service = User1Service.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        // 1. 파라미터 수신
        String uid = req.getParameter("uid");

        // 2. 서비스 호출 (삭제)
        service.remove(uid);

        // 3. 목록으로 리다이렉트
        resp.sendRedirect("/ch10/user1/list.do");
    }
}
