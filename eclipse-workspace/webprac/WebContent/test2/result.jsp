<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="test2.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>��ǰ�ڵ���ȸ���</h2>
<hr>
<jsp:useBean id ="product" class ="test2.product"/>
<jsp:setProperty property="*" name="product"/>

<table border="1">
<tr>
<tr align="center">
<td colspan=2>��ǰ�ڵ�</td>
</tr>

<tr>
	<td>��ǰ�ڵ�</td>
	<td><%= request.getParameter("pcode") %></td>
</tr>
<tr>
	<td>������</td>
	<%
		productInterface pi = new productInterface();
		String result = pi.searchProduct(request.getParameter("pcode"));
		
		if(result !=null){
			out.println("<td>"+result+"</td>");
		}else{
			out.println("<td>"+"��ϵ������� ��ǰ�Դϴ�!!"+"</td>");
		}
	%>
	
</tr>
<tr>
	<td>��ȸ�Ͻ�</td>
	<td><%=new java.util.Date() %></td>
</tr>

</table>
<hr>
�ۼ���: �ѱ��� ���: 1004 �ۼ���: 2019-10-31
</body>
</html>