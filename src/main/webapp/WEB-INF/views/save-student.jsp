<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm mới</title>
</head>
<body>
  <h1>Thêm mới sinh viên</h1>
  <c:url value="/save-student" var="saveStudent"/>
  <a href="<c:url value="/listStudent" />" >Danh sách </a><br />
  <br>
  <form:form action="${saveStudent }" method="POST" modelAttribute="student">
      <table>
      	<tr>
      		<td>Ho Ten</td>
      		<td> <form:input path="hoten" /></td>
      	</tr>
      	<tr>
      		<td>Nam Sinh</td>
      		<td><form:input path="namsinh" /></td>
      	</tr>
      	<tr>
      		<td>Lop</td>
      		<td><form:input path="lop" /></td>
      	</tr>
      	<tr>
      		<td>Diem</td>
      		<td><form:input path="diem" /></td>
      	</tr>
      </table>
	 <br>
    <button type="submit">Thêm</button>
  </form:form>
</body>
</html>