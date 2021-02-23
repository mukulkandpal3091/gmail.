<%-- 
    Document   : mk
    Created on : 7 Oct, 2020, 7:37:20 AM
    Author     : mukul kandpal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
	nav{
		border:1px solid #ddd;
		border-left:none;
		border-right:none;
		border-top:none;
	}
	.search-box{
		border:3px solid #ddd;
		height:40px;
		width:50%;
		border-radius:50px;
		padding: 0px 10px;
	}
	div{float:left;}
	input span{
		position:absolute;
		top:0px;
		background:white; color:black;
		font-size:23px; padding:7.5px;
		cursor:pointer;
	}
	wrape{
		display:flex;
		position:relative;
		padding :15px;
		border-bottom:1px solid rgba(0,0,0,0.05);
		border-top:1px solid rgba(225,225,225,0.05);
		
	}
	ul{
		list-style:none;
		border: 1px solid #ddd;
		border-bottom:none;
		border-left:none;
		border-right:none;
	}
	.button{
		border:3px solid #ddd;
		height:40px;
		width:10%;
		border-radius:50px;
		padding: 5px 0px;
		color:black;
		background-color:white;
		cursor:pointer;
	}
        .button:active{
			background-color:#ddd;
			box-shadow:0 2px #ddd;
			transform:translateY(4px);
		}
	.wrape li:hover{
	background:#ddd;
}
.compose{
			
			border:1px solid #ddd;
			border-left:none;
			border-right:none;
			border-top:none;
			width:100%;		
	}
	#popup{
		display:none;
                float:right;
		position:fixed;
		z-index:1;
		left:0;
		top:0;
		height:100%;
		width:100%;
		overflow:auto;
		background-color:rgba(0,0,0,0.5);
		
	}
	.close{
		color:#363636;
		float:right;
		font-size:32px;
		top:0; 
		right:1em;
	}
	.close:hover,.close:focus{
		color:red;
		text-decoration:none;
		cursor:pointer;
	}
	.content{
		background-color:#fff;
		margin:20% auto;
		width:350px;
		height:400px;
		padding:20px;
		boxshadow:0 5px 8px 0 rgba(0,0,0,0.6),0 7px 20px 0 rgba(0,0,0,0.6);
		border:2px solid #ddd;
		border-radius:10px;
	}
	.head{
		background-color:#efefef;
	}
	
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="link.css">
    </head>
    <body>
      
       <nav>
		<div class="logo"><a href="#"><img src="gmail.png"></a></div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="search" placeholder="Search" class="search-box"> 
                <span class="fa fa-search"></span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <%
                        String name= (String)session.getAttribute("user");
                        out.println(name);
                 %>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div style="float:right">
                <form align="right" action="loginpage.html" method="post" >
                    <input type="submit" value="log out" onclick="loginpage.html">
                   </form>
                </div>
	</nav>
        
	<br><br>
		<button class="button" onclick="document.getElementById('popup').style.display='block'">Compose</button>
                <form action="sendemail.jsp" method="post">
                <div id="popup">
			<div class="content">
				<a class="close" onclick="document.getElementById('popup').style.display='none'">&times;</a>
				<header class="head">New Message</header>
				<br>
			<input class="compose" type="email" placeholder="To" name="to">
			<br><br>
			<input class="compose" type="text" placeholder="Subject" name="sub">
			<br><br>
			<input style="width:100%;height:50%;" type="text" name="text">
			<br><br>
			<input type="Submit" class="button" value="Send"></td>
			&nbsp;
			<a href="#"></a>&nbsp;<a href="#">Attach</a>
			</div>
		</div>
	<br><br>
        </form>
	<div class="wrape">
			<ul>
				<li><a href="inbox.jsp"><i class="fa fa-inbox" aria-hidden="true"></i>&nbsp;Inbox</a></li>
				<br>
				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i>&nbsp;Starred</a></li>
				<br>
				<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;Snoozed</a></li>
				<br>
				<li><a href="sent.jsp"><i class="fa fa-paper-plane-o" aria-hidden="true"></i>&nbsp;Sent</a></li>
				<br>
				<li><a href="draft.jsp"><i class="fa fa-file-o" aria-hidden="true"></i>&nbsp;Draft</a></li>
				<br>
				<li><a href="#"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Important</a></li>
				<br>
				<li><a href="#"><i class="fa fa-commenting-o" aria-hidden="true"></i>&nbsp;Chats</a></li>
				<br>
				<li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i>&nbsp;All Mailed</a></li>
				<br>
				<li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i>&nbsp;Spam</a></li>
			</ul>
	</div>
</body>
</html>
