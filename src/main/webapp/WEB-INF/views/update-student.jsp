<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa thông tin</title>
</head>
<body>
  <h1>Sửa thông tin </h1>
  <c:url value="/update-student" var="update"/>
  <a href="<c:url value="/listStudent" />" >Danh sách </a><br />
  <br>
  <form:form action="${update}" method="POST" modelAttribute="student">
      <table>
      	<tr>
      		<td>Ma SV</td>
      		<td><form:input path="masv" readonly="true" /></td>
      	</tr>
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
    <button type="submit">Sửa</button>
  </form:form>
</body>
</html>