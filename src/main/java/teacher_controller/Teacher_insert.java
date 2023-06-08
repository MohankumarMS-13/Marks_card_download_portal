package teacher_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teacher_details.TeachersInfo;
import teacher_operation.Teacher_CRUD;

@WebServlet("/teacher_Insert")
public class Teacher_insert extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");

		TeachersInfo t = new TeachersInfo();
		t.setId(id);
		t.setPassword(pwd);

		Teacher_CRUD crud = new Teacher_CRUD();
		crud.insert(t);

		resp.getWriter().print("INSERTED");
	}

}
