<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "test3.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�л����</title>
</head>
<body>
<h2>�л����</h2>
<hr>
<%
request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="student" class="test3.student" />
<jsp:setProperty property="*" name="student" />
<table border =1>
<tr><th>�й�</th><th>�̸�</th><th>�а�</th><th>��ȭ��ȣ</th><th>�̸���</th></tr>
<%
studentDAO sdao = new studentDAO();
ArrayList<student> data = sdao.findAll();
for(student s : data){
%>
<tr>
<td><%=s.getIsbn() %></td>
<td><%=s.getSname() %></td>
<td><%=s.getDept() %></td>
<td><%=s.getPhone() %></td>
<td><%=s.getEmail() %></td>
</tr>
<%
}
%>
</table>
<a href="form.html">�л����</a>
</body>
</html>