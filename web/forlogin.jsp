<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="link.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
</head>
<body bgColor="green" text="white">
    
<%
   String ide = request.getParameter("email");
    String paas = request.getParameter("pass");
     try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/kkuu?autoReconnect=true&useSSL=false","root","309111");
            String sql="select * from abc where email='"+ide+"' and password='"+paas+"'";
            Statement st= conn.createStatement();
            ResultSet rs= st.executeQuery(sql);
            if(rs.next())
            {
               out.println("login");
               session.setAttribute("user",ide);
               response.sendRedirect("inbox.jsp");    
            }
            else
            {
                out.println("wrong");
            }
        }catch(Exception e){}
 %>
 </body>
</html>
 
