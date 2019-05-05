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
                 
                  String bid=request.getParameter("bid");
                  String pid=request.getParameter("pid");
                  String amt=request.getParameter("amt");
                  int amount=Integer.parseInt(amt);
                  String bno=request.getParameter("barcode_no");
                  long barcode=Long.parseLong(bno);
                  
                  Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/pharmacy", "postgres","admin");
                 
                  PreparedStatement ps1 = connection.prepareStatement("insert into bill values (?,?,?,?)");
                  if(bid.isEmpty()==false && pid.isEmpty()==false)
                  {
                  ps1.setString(1,bid);
                  ps1.setString(2,pid);
                  ps1.setInt(3,amount);
                  ps1.setLong(4,barcode);
                  
                  ps1.executeUpdate();
                  }
           
                    response.sendRedirect("bills.jsp");
          %>
    </body>
</html>

