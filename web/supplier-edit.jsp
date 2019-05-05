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
                 
                  String sid=request.getParameter("sid");
                  String name=request.getParameter("name");
                  String qp=request.getParameter("qp");
                  int q=Integer.parseInt(qp);
                  String a=request.getParameter("add");
                  String c=request.getParameter("contact");
                  long con=Long.parseLong(c);
                  
                  Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/pharmacy", "postgres","admin");
                 
                  PreparedStatement ps1 = connection.prepareStatement("insert into supplier values (?,?,?,?,?)");
                  
                  ps1.setString(1,sid);
                  ps1.setString(2,name);
                  ps1.setInt(3,q);
                  ps1.setString(4,a);
                  ps1.setLong(5,con);
                  
                  ps1.executeUpdate();
                  
           
                    response.sendRedirect("supplier.jsp");
          %>
    </body>
</html>

