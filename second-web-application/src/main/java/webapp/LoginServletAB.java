package webapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.todo.TodoService;


@WebServlet(urlPatterns = "/loginAB.do")
public class LoginServletAB extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private LoginServiceAB service = new LoginServiceAB();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/loginAB.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		request.setAttribute("todos", TodoService.retrieveTodos());
		boolean isValidUser = service.validateUser(name, password);

		if (isValidUser) {
			System.out.println("isValidUser");
			response.sendRedirect("/todoAB.do");
		} else {
			System.out.println("isNotValidUser");
			request.setAttribute("errorMessage", "Invalid Credentials!!");
			request.getRequestDispatcher("/WEB-INF/views/loginAB.jsp").forward(request, response);
		}
	}

}