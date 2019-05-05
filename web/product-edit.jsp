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
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Profile Details</title>
    </head>
    <body>
        <%
                  Class.forName("org.postgresql.Driver");
                 
                  String bno=request.getParameter("barcode_no");
                  long barcode=Long.parseLong(bno);
                  
                  String mname=request.getParameter("mname");
                  String q=request.getParameter("q");
                  int qt=Integer.parseInt(q);
                  String manf=request.getParameter("manf");
                  String mfgd=request.getParameter("mfgd");
                  SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MMM-dd"); 
                  Date date=formatter.parse(mfgd);  
                  String ed=request.getParameter("edate");
                  SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MMM-dd"); 
                  Date date1=formatter1.parse(ed);  
                  String p=request.getParameter("price");
                  int price=Integer.parseInt(p);
                  
                  
                  Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/pharmacy", "postgres","admin");
                 
                  PreparedStatement ps1 = connection.prepareStatement("insert into medicine values (?,?,?,?,?,?,?)");
                 
                  ps1.setLong(1,barcode);
                  ps1.setString(2,mname);
                  ps1.setInt(3,qt);
                  ps1.setString(4,manf);
                  ps1.setDate(5,java.sql.Date (date));
                  ps1.setDate(6,java.sql.Date (date));
                  ps1.setInt(7,price);
                  
                  
                  
                  ps1.executeUpdate();
                  
           
                    response.sendRedirect("product.jsp");
          %>
    </body>
</html>

