package student_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_details.StudentInfo;
import student_operation.Student_CRUD;

@WebServlet("/student_Fetch")
public class Student_fetch extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usn = req.getParameter("usn");
		String dob = req.getParameter("dob");

		Student_CRUD crud = new Student_CRUD();
		StudentInfo s = crud.fetch(usn);
		if(s!=null)
		{
			if(s.getDate_of_birth().equals(dob))
			{
				req.setAttribute("details", s);
				RequestDispatcher rd=req.getRequestDispatcher("student_result_display.jsp");
				rd.forward(req, resp);
			}
			else
			{
				String msg = "Date of birth is not matching, Please enter correct date of birth provided during registration";
				req.setAttribute("msg", msg);
				RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
				rd.forward(req, resp);
			}
		}
		else
		{
			String msg = "No record found for this Registration number";
			req.setAttribute("msg", msg);
			RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
			rd.forward(req, resp);
		}
	}

}
