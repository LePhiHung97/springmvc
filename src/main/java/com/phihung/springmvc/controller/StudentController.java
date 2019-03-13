package com.phihung.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.phihung.springmvc.entities.Student;
import com.phihung.springmvc.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/listStudent")
	public String Default(Model model) {
		List<Student> listStudent = studentService.findAll();
		model.addAttribute("listStudent", listStudent);
		return "listStudent";
	}

	@RequestMapping(value = "/save-student", method = RequestMethod.GET)
	public String addStudent(Model model) {
		model.addAttribute("student", new Student());
		return "save-student";
	}

	@RequestMapping(value = "/save-student", method = RequestMethod.POST)
	public String doInsertStudent(@ModelAttribute("Student") Student student, Model model) {
		studentService.save(student);
		model.addAttribute("listStudent", studentService.findAll());
		return "listStudent";
	}

	@RequestMapping("/update-student/{masv}")
	public String updateStudent(@PathVariable int masv, Model model) {
		Student student = studentService.findById(masv);
		model.addAttribute("student", student);
		return "update-student";
	}

	@RequestMapping(value = "/update-student", method = RequestMethod.POST)
	public String doUpdateStudent(@ModelAttribute("Student") Student student, Model model) {
		studentService.update(student);
		model.addAttribute("listStudent", studentService.findAll());
		return "listStudent";
	}

	@RequestMapping(value = "/delete-student/{masv}")
	public String doDeleteStudent(@PathVariable int masv, Model model) {
		studentService.delete(masv);
		model.addAttribute("listStudent", studentService.findAll());
		return "listStudent";
	}

}
