<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*;" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="gmailhomepage.jsp" />  
         <%
             String ide="";
	String email =(String)session.getAttribute("user");
        try
        {
            
            Class.forName("com.mysql.cj.jdbc.Driver"); 
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/uuuu?autoReconnect=true&useSSL=false","root","309111");
	    String sql="select * from abcd where reciever='"+email+"'";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            out.println("<table><tr><td>sender</td><td>mail</td><td></td></tr>");
            
            while(rs.next())
                    {
                        ide=rs.getString("ide");
                        out.println("<tr><td>"+rs.getString("sender")+"</td>");
                        
                        out.println("<td>"+rs.getString("subject")+"</td><td><a href='delete.jsp?value="+ide+"&val=0'>delete</a></td></tr>");
                    }
            out.println("</table>");
        }catch(Exception e){}
 %>
    </body>
</html>
