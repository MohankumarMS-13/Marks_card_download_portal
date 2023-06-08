package student_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_operation.Student_CRUD;

@WebServlet("/student_Delete")
public class Student_delete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usn = req.getParameter("usn");

		Student_CRUD crud = new Student_CRUD();
		String msg = crud.delete(usn);
		req.setAttribute("msg", msg);
		RequestDispatcher rd = req.getRequestDispatcher("message.jsp");
		rd.forward(req, resp);

	}

}
