package controller.users.register;

import java.io.IOException;

import dto.UsersDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.UsersService;


@WebServlet("/users/register.do")
public class RegisterController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	

	private UsersService userService = UsersService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/users/register.jsp");
		dispatcher.forward(req, resp);
	
	}
		
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String us_id = req.getParameter("user_id");
		String us_pass = req.getParameter("user_pass1");
		String us_name = req.getParameter("user_name");
		String us_hp = req.getParameter("user_hp");
		String us_email = req.getParameter("user_email");
		
		String postal = req.getParameter("postal_code");
		String basic  = req.getParameter("basic_addr");
		String detail = req.getParameter("detail_addr");
		
		String us_addr = (postal != null ? postal : "") + " " 
	               + (basic != null ? basic : "") + " " 
	               + (detail != null ? detail : "");
		
		
		
		UsersDTO dto = new UsersDTO();
		dto.setUs_id(us_id);
		dto.setUs_pass(us_pass);
		dto.setUs_name(us_name);
		dto.setUs_hp(us_hp);
		dto.setUs_email(us_email);
		dto.setUs_addr(us_addr);
		
		userService.register(dto);
		
		resp.sendRedirect("/Green/");
	}

}
