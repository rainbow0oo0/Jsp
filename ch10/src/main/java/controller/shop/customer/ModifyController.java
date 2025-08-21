package controller.shop.customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/shop/customer/modify.do")
public class ModifyController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.setCharacterEncoding("UTF-8");

        String cid     = req.getParameter("cid");
        String name    = req.getParameter("name");
        String hp      = req.getParameter("hp");
        String address = req.getParameter("address");
        String rdate   = req.getParameter("rdate");

        String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
        String user = "rainbow0oo0";
        String pass = "1234";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection(host, user, pass);

            String sql = "UPDATE CUSTOMER SET name=?, hp=?, address=?, rdate=? WHERE cid=?";
            PreparedStatement psmt = conn.prepareStatement(sql);
            psmt.setString(1, name);
            psmt.setString(2, hp);
            psmt.setString(3, address);
            psmt.setString(4, rdate);
            psmt.setString(5, cid);

            int result = psmt.executeUpdate();
            System.out.println(result + "건 수정됨");

            psmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        // 수정 후 목록으로 이동
        resp.sendRedirect("/ch10/shop/customer/list.do");
    }
}
