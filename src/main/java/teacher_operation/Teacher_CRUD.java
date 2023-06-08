package teacher_operation;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import teacher_details.TeachersInfo;

public class Teacher_CRUD {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void insert(TeachersInfo t) {
		entityTransaction.begin();
		entityManager.persist(t);
		entityTransaction.commit();
	}

	public TeachersInfo login(String id) {
		TeachersInfo t = entityManager.find(TeachersInfo.class, id);
		return t;
	}
}
