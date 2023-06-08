package student_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_operation.Student_CRUD;

@WebServlet("/student_FetchAll")
public class Student_fetchAll extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student_CRUD crud = new Student_CRUD();
		List l = crud.fetchAll();

		req.setAttribute("detailsAll", l);
		
		RequestDispatcher rd = req.getRequestDispatcher("student_display_all.jsp");
		rd.forward(req, resp);
	}

}
