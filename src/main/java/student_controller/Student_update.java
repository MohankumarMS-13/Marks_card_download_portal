package student_controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_details.StudentInfo;
import student_operation.Student_CRUD;

@WebServlet("/student_Update")
public class Student_update extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usn = req.getParameter("usn");

		Student_CRUD crud = new Student_CRUD();
		StudentInfo s = crud.update(usn);
		if (s != null) {
			ArrayList a = new ArrayList();
			a.add(s.getUniversal_seat_number());// 0
			a.add(s.getStudent_name());// 1
			a.add(s.getDate_of_birth());// 2
			a.add(s.getStudent_father_name());// 3
			a.add(s.getStudent_mother_name());// 4
			a.add(s.getKannada_internal_marks());// 5
			a.add(s.getKannada_external_marks());// 6
			a.add(s.getEnglish_internal_marks());// 7
			a.add(s.getEnglish_external_marks());// 8
			a.add(s.getHindi_internal_marks());// 9
			a.add(s.getHindi_external_marks());// 10
			a.add(s.getMaths_internal_marks());// 11
			a.add(s.getMaths_external_marks());// 12
			a.add(s.getScience_internal_marks());// 13
			a.add(s.getScience_external_marks());// 14
			a.add(s.getSocial_internal_marks());// 15
			a.add(s.getSocial_external_marks());// 16
			req.setAttribute("details", a);
			RequestDispatcher rd = req.getRequestDispatcher("student_update_info.jsp");
			rd.forward(req, resp);
		} else {
			String msg = "No record found for this Registration number";
			req.setAttribute("msg", msg);
			RequestDispatcher rd = req.getRequestDispatcher("message.jsp");
			rd.forward(req, resp);
		}
	}

}
