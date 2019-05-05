<%-- 
    Document   : list_of_students
    Created on : Mar 5, 2018, 4:50:27 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<% 
    Class.forName("org.postgresql.Driver");
    Connection connection = null;
    connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/pharmacy", "postgres","admin");
   String id=request.getParameter("id");
    PreparedStatement ps1 = connection.prepareStatement("delete from employee where eid='"+id+"'");
    ps1.executeUpdate();
    response.sendRedirect("staff.jsp");
%>