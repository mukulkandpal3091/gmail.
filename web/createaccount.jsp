<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="link.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgColor="cyan" text="white">
    <table>
        <tr>
        <br><br><br><br>
        <br><br><td style="font-type:Arial;font-size:50px;"> ACCOUNT CREATED SUCCESSFULLY</td>
        </tr>
        <tr>
                <td style="align:left;"><B><a href="loginpage.html">LOGIN</a></B></td>
        </tr>
    </table>
<%
	String fname = request.getParameter("fn");
        String lname = request.getParameter("ln");
	String email = request.getParameter("email");
        String password= request.getParameter("pass");
        String pasword= request.getParameter("pas");
        String phone = request.getParameter("ph");
        String phonee= request.getParameter("ps");
      
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/kkuu?autoReconnect=true&useSSL=false","root","309111");
	    String sql="insert into abc(name,lname,email,password,pasword,phone,phonee) values(?,?,?,?,?,?,?)";
							
            PreparedStatement st= conn.prepareStatement(sql);
            st.setString(1,fname);
            st.setString(2,lname);
            st.setString(3,email);
            st.setString(4,password);
            st.setString(5,pasword);
            st.setString(6,phone);
            st.setString(7,phonee);
            st.executeUpdate();
        }catch(Exception e){}
 %>
</body>
</html>