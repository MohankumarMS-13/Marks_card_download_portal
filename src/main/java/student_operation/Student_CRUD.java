package student_operation;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import student_details.StudentInfo;

public class Student_CRUD {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void insert(StudentInfo s) {
		entityTransaction.begin();
		entityManager.persist(s);
		entityTransaction.commit();
	}

	public String delete(String usn) {
		StudentInfo s = entityManager.find(StudentInfo.class, usn);
		if (s != null) {
			entityTransaction.begin();
			entityManager.remove(s);
			entityTransaction.commit();
			return "Student detail is successfully deleted";
		}
		return "No record found for this Registration number";
	}

	public StudentInfo fetch(String usn) {
		StudentInfo s = entityManager.find(StudentInfo.class, usn);
		return s;
	}

	public List<StudentInfo> fetchAll() {
		Query q = entityManager.createQuery("select data from StudentInfo data");
		List<StudentInfo> l = q.getResultList();
		return l;
	}

	public StudentInfo update(String usn) {
		StudentInfo s = entityManager.find(StudentInfo.class, usn);
		return s;
	}

	public void updateinfo(StudentInfo s) {
		entityTransaction.begin();
		entityManager.merge(s);
		entityTransaction.commit();
	}
}
