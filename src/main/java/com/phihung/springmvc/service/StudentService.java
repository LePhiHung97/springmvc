package com.phihung.springmvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phihung.springmvc.dao.StudentDAO;
import com.phihung.springmvc.entities.Student;

@Service
@Transactional
public class StudentService {

	@Autowired
	private StudentDAO studentDao;

	public List<Student> findAll() {
		return studentDao.findAll();
	}

	public Student findById(int id) {
		return studentDao.findById(id);
	}

	public void save(Student student) {
		studentDao.persist(student);
	}

	public void update(Student student) {
		Student studentTemp = studentDao.findById(student.getMasv());
		studentTemp.setHoten(student.getHoten());
		studentTemp.setNamsinh(student.getNamsinh());
		studentTemp.setLop(student.getLop());
		studentTemp.setDiem(student.getDiem());
	}

	public void delete(int id) {
		Student student = studentDao.findById(id);
		studentDao.delete(student);
	}
}
