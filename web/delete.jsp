<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*;" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE MAIL</title>
    </head>
    <body>
         <%
	String email =(String)session.getAttribute("user");
        int flag=Integer.parseInt(request.getParameter("val"));
        int ide= Integer.parseInt(request.getParameter("value"));
       
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/uuuu?autoReconnect=true&useSSL=false","root","309111");
	    String sql="delete from abcd where ide="+ide;
            Statement st=conn.createStatement();
            st.executeUpdate(sql);
            
            if(flag==0)
             response.sendRedirect("inbox.jsp");
             if(flag==1)
             response.sendRedirect("sent.jsp");
        }catch(Exception e){}
           %>
    </body>
</html>