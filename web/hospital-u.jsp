<%-- 
    Document   : edu_insert
    Created on : Mar 12, 2018, 1:13:17 PM
    Author     : SBMPC.Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import=" java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Profile Details</title>
    </head>
    <body>
        <%
                  Class.forName("org.postgresql.Driver");
                 
                  String hid=request.getParameter("hid");
                  String add=request.getParameter("add");
                  String hname=request.getParameter("hname");
                  
                  
                  Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/pharmacy", "postgres","admin");
                  
                  PreparedStatement ps2 = connection.prepareStatement("delete from hospital where hid='"+hid+"'");
                  ps2.executeUpdate();
                 
                  PreparedStatement ps1 = connection.prepareStatement("insert into hospital values (?,?,?)");
                 
                  ps1.setString(1,hname);
                  ps1.setString(2,hid);
                  ps1.setString(3,add);
                  
                 
                  
                  ps1.executeUpdate();
                  
           
                    response.sendRedirect("hospital.jsp");
          %>
    </body>
</html>

