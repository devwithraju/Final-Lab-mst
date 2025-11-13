<%@page import="com.student.dao.StudentDAO"%>
<%@page import="com.student.model.Student"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
Student s = StudentDAO.getStudentById(id);
%>
<form action="StudentServlet" method="post">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="<%=s.getId()%>">
    Name: <input type="text" name="name" value="<%=s.getName()%>"><br>
    Email: <input type="text" name="email" value="<%=s.getEmail()%>"><br>
    Course: <input type="text" name="course" value="<%=s.getCourse()%>"><br>
    <input type="submit" value="Update">
</form>
