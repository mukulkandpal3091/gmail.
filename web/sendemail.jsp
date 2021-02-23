<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="link.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SENDING</title>
</head>
<body bgColor="green" text="white">
    
<%
   String too = request.getParameter("to");
   String froom = (String)session.getAttribute("user");
   String subject = request.getParameter("sub");
   String ttext = request.getParameter("text");
     try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/uuuu?autoReconnect=true&useSSL=false","root","309111");
            String sql="insert into abcd(reciever,sender,subject,text) values(?,?,?,?)";
							
            PreparedStatement st= conn.prepareStatement(sql);
            st.setString(1,too);
            st.setString(2,froom);
            st.setString(3,subject);
            st.setString(4,ttext);
            st.executeUpdate();
            
            response.sendRedirect("sent.jsp");
        }catch(Exception e){}
 %>
</body>
</html>