<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="test2.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>제품코드조회결과</h2>
<hr>
<jsp:useBean id ="product" class ="test2.product"/>
<jsp:setProperty property="*" name="product"/>

<table border="1">
<tr>
<tr align="center">
<td colspan=2>제품코드</td>
</tr>

<tr>
	<td>제품코드</td>
	<td><%= request.getParameter("pcode") %></td>
</tr>
<tr>
	<td>제조사</td>
	<%
		productInterface pi = new productInterface();
		String result = pi.searchProduct(request.getParameter("pcode"));
		
		if(result !=null){
			out.println("<td>"+result+"</td>");
		}else{
			out.println("<td>"+"등록되지않은 제품입니다!!"+"</td>");
		}
	%>
	
</tr>
<tr>
	<td>조회일시</td>
	<td><%=new java.util.Date() %></td>
</tr>

</table>
<hr>
작성자: 한국인 비번: 1004 작성일: 2019-10-31
</body>
</html>