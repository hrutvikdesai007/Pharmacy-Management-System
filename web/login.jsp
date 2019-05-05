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
        <title>Login</title>
    </head>
    <body>
        <%
                  Class.forName("org.postgresql.Driver");
                 
                  String name=request.getParameter("username");
                  String pass=request.getParameter("password");
                  
                  if(name=="admin"){
                      if(pass=="admin"){
                          response.sendRedirect("index.html");
                      }
                  } 
                  else
                  {
                      response.sendRedirect("login.html");
                  }
                  
          %>
    </body>
</html>

