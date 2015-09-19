<%@ page language="java" import="java.sql.*" %>

<%
  		String user=request.getParameter("exuser"); 
 String password=request.getParameter("expassword"); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery("select username,password from loginfarmer where username='"+user+"' and password='"+password+"'");
String Password="";
String User="";



while(rs.next())
{
 Password=rs.getString("password");

}
			if(Password.equals(password)||User.equals(user))
			{
                out.println("<div id=head><br>"+ user + " welcome to Agropoint</span></div><center><img class=img src=images/ico.jpg width=50 height=50></center>");
				  %>
				  <html>
				  <head>
				  <style>
				 @media screen and (max-width :250px)
	  {
	*{
		padding:0;
		margin :0;
	}
	  }
	    @media screen and (max-width :450px)
		{
		#head{
			background-color:#E6E4E4;
			text-align:center;
			height:50px;
		}
		.img{
			
			margin-top:17px;
		}
		
		.user{
width:250px;
height:30px;
margin-left:34px;

}
#nav{
	margin-left:-10px;
}
.submit{
margin-left:30px;
width:150px;
height:34px;
background-color:#33CC66;
}
		}
		

				
				  </style>
				  				 <link rel="stylesheet" href="css/style.css">
				
				 </head>
				  <body>
				  <br>
				  <div id="nav">
				
				  <ul>
					<a href="updation.html">	<li >Recent Updates</li></a>
					<a href="information.html">		<li>Information</li></a>
					
				<a href="settings.html" class="br">			<li>Settings</li></a>
				  
				  </ul>
				  </div>
				  <div style="margin-top:20px;">
				 
				  <form method="post" action="register.jsp" name="Registrationform" >
				  
<input type="text" name="farmername"  id="farmername" class="user"  placeholder="Farmer Name" onkeyup="sendNameInfo()"  required="required"/>

			<input type="text" name="location" id="location" class="user"  placeholder="Location" required="required" />
				   <input type="text" name="pin" id="pin"  class="user"  placeholder="pincode" required="required" />
				  <input type="text" name="typefarming" id="typefarming"  placeholder="type of farming " class="user"required="required" />
				  <input type="text" name="land" id="land" class="user"  placeholder="total land"  required="required" />
				<input type="text" name="year" id="year" class="user"  placeholder="yield/year" required="required" />
				  <input type="submit" value="inventory" class="submit" />
				  </form>
			
				  </div>
				  </body>
				  </html>
				  <%
			}
			else
			{
				out.println("<script>alert('Invalid username or password');window.location='index.html'; </script>");
			}

          %>
