<%@page import="com.student.dao.StudentDAO"%>
<%@page import="com.student.model.Student"%>
<%@page import="java.util.*"%>
<html>
<body>
<h2>All Students</h2>
<a href="addStudent.jsp">Add New</a>
<table border="1">
<tr><th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Actions</th></tr>

<%
List<Student> list = StudentDAO.getAllStudents();
for(Student s : list){
%>
<tr>
<td><%=s.getId()%></td>
<td><%=s.getName()%></td>
<td><%=s.getEmail()%></td>
<td><%=s.getCourse()%></td>
<td>
<a href="editStudent.jsp?id=<%=s.getId()%>">Edit</a> |
<a href="StudentServlet?action=delete&id=<%=s.getId()%>">Delete</a>
</td>
</tr>
<% } %>
</table>
</body>
</html>
