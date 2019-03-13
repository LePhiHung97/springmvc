package com.phihung.springmvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.phihung.springmvc.entities.Student;

@Repository
@Transactional
public class StudentDAO {

	@PersistenceContext
	private EntityManager entityManager;

	public void persist(Student student) {
		entityManager.persist(student);
	}

	public Student findById(int id) {
		return entityManager.find(Student.class, id);
	}

	public void delete(Student student) {
		entityManager.remove(student);
	}

	public List<Student> findAll() {
		return entityManager.createQuery("From Student", Student.class).getResultList();
	}
}
