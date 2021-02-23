<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>FORGOT EMAIL</title>
<style>

	input{
		position:relative;
		border:none;
		border:2px solid  #f1f1f1;	
		padding:10px;
	}
	.btn{
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
</style>
</head>
<body>
<form>
<%
	String phnum = request.getParameter("phhh");
        String rpass = request.getParameter("ipass");
         try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/kkuu?autoReconnect=true&useSSL=false","root","309111");
	    String sql="update abc set password="+rpass+" where phone="+phnum+"";
							
            PreparedStatement st= conn.prepareStatement(sql);
            st.executeUpdate();
            response.sendRedirect("loginpage.html");
        } catch(Exception e){}
%>
</form>
</body>
</html>