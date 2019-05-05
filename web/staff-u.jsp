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
                 
                  String eid=request.getParameter("eid");
                  String ename=request.getParameter("ename");
                  String sal=request.getParameter("sal");
                  int s=Integer.parseInt(sal);
                  String addr=request.getParameter("add");
                  String c=request.getParameter("contact");
                  long contact=Long.parseLong(c);
                  
                  Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/pharmacy", "postgres","admin");
               
                  PreparedStatement ps2 = connection.prepareStatement("delete from employee where eid='"+eid+"'");
                  ps2.executeUpdate();

                 
                  PreparedStatement ps1 = connection.prepareStatement("insert into employee values (?,?,?,?,?)");
                  
                  ps1.setString(1,eid);
                  ps1.setString(2,ename);
                  ps1.setInt(3,s);
                  ps1.setString(4, addr);
                  ps1.setLong(5,contact);
                  
                  ps1.executeUpdate();
                 
           
                    response.sendRedirect("staff.jsp");
          %>
    </body>
</html>

