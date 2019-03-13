<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Student</title>
</head>
<body>
   <c:url value="/save-student" var="urlSave"/>
  <c:url value="/update-student" var="urlUpdate"/>
  <c:url value="/delete-student" var="urlDelete"/> 
  <h1>Danh sách sinh viên</h1>
  <a href="<c:url value="/save-student"/> ">Thêm mới</a>
  <br />
  <br />
  <table >
    <tr>
      <th>MaSV</th>
      <th>HoTen</th>
      <th>NamSinh</th>
      <th>Lop</th>
      <th>Diem</th>
    </tr>
    <c:if test="${not empty listStudent}">
      <c:forEach var="student" items="${listStudent}">
        <tr style="border: 1px black solid">
          <td>${student.masv}</td>
          <td>${student.hoten}</td>
          <td>${student.namsinh}</td>
          <td>${student.lop}</td>
          <td>${student.diem}</td>       
          <td><a href="${urlUpdate}/${student.masv}">Sửa</a></td>
          <td><a href="${urlDelete}/${student.masv}">Xóa</a></td> 
        </tr>
      </c:forEach>
    </c:if>
  </table>
</body>
</html>