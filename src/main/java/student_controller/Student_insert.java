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

@WebServlet("/studentInsert")
public class Student_insert extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usn = req.getParameter("usn");
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String fname = req.getParameter("fname");
		String mname = req.getParameter("mname");

		String kan_int = req.getParameter("kim");
		int kim = Integer.parseInt(kan_int);
		String kan_ext = req.getParameter("kem");
		int kem = Integer.parseInt(kan_ext);
		String eng_int = req.getParameter("eim");
		int eim = Integer.parseInt(eng_int);
		String eng_ext = req.getParameter("eem");
		int eem = Integer.parseInt(kan_ext);
		String hin_int = req.getParameter("him");
		int him = Integer.parseInt(hin_int);
		String hin_ext = req.getParameter("hem");
		int hem = Integer.parseInt(hin_ext);
		String math_int = req.getParameter("mim");
		int mim = Integer.parseInt(math_int);
		String math_ext = req.getParameter("mem");
		int mem = Integer.parseInt(math_ext);
		String sci_int = req.getParameter("sim");
		int sim = Integer.parseInt(sci_int);
		String sci_ext = req.getParameter("sem");
		int sem = Integer.parseInt(sci_ext);
		String soc_int = req.getParameter("ssim");
		int ssim = Integer.parseInt(soc_int);
		String soc_ext = req.getParameter("ssem");
		int ssem = Integer.parseInt(soc_ext);

		StudentInfo s = new StudentInfo();
		s.setUniversal_seat_number(usn);
		s.setStudent_name(name);
		s.setStudent_father_name(fname);
		s.setStudent_mother_name(mname);
		s.setDate_of_birth(dob);
		s.setKannada_internal_marks(kim);
		s.setKannada_external_marks(kem);
		s.setEnglish_internal_marks(eim);
		s.setEnglish_external_marks(eem);
		s.setHindi_internal_marks(him);
		s.setHindi_external_marks(hem);
		s.setMaths_internal_marks(mim);
		s.setMaths_external_marks(mem);
		s.setScience_internal_marks(sim);
		s.setScience_external_marks(sem);
		s.setSocial_internal_marks(ssim);
		s.setSocial_external_marks(ssem);

		Student_CRUD crud = new Student_CRUD();
		crud.insert(s);
		
		String msg = "Student detail is successfully inserted";
		req.setAttribute("msg", msg);
		RequestDispatcher rd = req.getRequestDispatcher("message.jsp");
		rd.forward(req, resp);

	}

}
