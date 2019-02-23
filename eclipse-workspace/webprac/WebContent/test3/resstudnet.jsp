<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="test3.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="student" class="test3.student"/>
<jsp:setProperty property="*" name="student"/>

<%
	studentDAO sdao = new studentDAO();
	sdao.addstudent(student);
	response.sendRedirect("liststudent.jsp");
%>