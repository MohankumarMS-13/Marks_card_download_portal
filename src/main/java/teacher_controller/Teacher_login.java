package teacher_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teacher_details.TeachersInfo;
import teacher_operation.Teacher_CRUD;

@WebServlet("/teacher_Login")
public class Teacher_login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");

		Teacher_CRUD crud = new Teacher_CRUD();
		TeachersInfo t = crud.login(id);
		if (t != null) {
			if (t.getPassword().equals(pwd)) {
				resp.sendRedirect("student_crudpage.html");
			} else {
				String msg = "Password entered doesn't match, Please enter correct password";
				req.setAttribute("msg", msg);
				RequestDispatcher rd = req.getRequestDispatcher("accessdenied.jsp");
				rd.forward(req, resp);
			}
		} else {
			String msg = "No account found for this Username, Please login again with correct User name";
			req.setAttribute("msg", msg);
			RequestDispatcher rd = req.getRequestDispatcher("accessdenied.jsp");
			rd.forward(req, resp);
		}
	}

}
