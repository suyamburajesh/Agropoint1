<%@ page language="java" import="java.sql.*" %>

<%
  		String user=request.getParameter("landuser"); 
 String password=request.getParameter("landpassword"); 

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
                out.println("<div id=head><br>"+ user + " welcome  </span></div><center><img class=img src=images/ico.jpg width=50 height=50></center> ");
				  %>
				  <html>
				  <head>
				  <style>
				  *{margin:0;padding:0;}
				  #heading{
					  background-color:#33CC66;
					  color :white;
					  height:100px;
 box-shadow: 0px 0px 12px rgba(88, 83, 74, .7);
						
				  }
				 .farmername,.location,.pin,.typefarming,.land,.year{
				    border-radius : 5px;height:25px;
				 }
				 .registersubmit{
					 width:70px;
height:30px;
border-radius:12px;
background-color:#33CC66;
				 }
				 .registersubmit:hover{
					 background-color:white;
				 }
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
				  </style>
				  				 <link rel="stylesheet" href="css/style.css">
				
				 </head>
				  <body>
				  <br>
				  <div id="nav">
				  
				  <ul>
					<a href="updation.html">	<li>Recent Updates</li></a>
					<a href="information.html">		<li>Information</li></a>
					
				<a href="settings.html">			<li>Settings</li></a>
				  
				  </ul>
				  </div>
				  <div id="form3" style="margin-top:20px;">
				 
				  <form method="post" action="register1.jsp" name="Registrationform" >
				<input type="text" name="farmername"  id="farmername" class="user" placeholder="Farmer name"   required="required"/>

				 <input type="text" name="location" id="location" class="user" placeholder="Area" required="required" />
				  <input type="text" name="pin" id="pin" class="user" placeholder="pincode" required="required" />
				  <input type="text" name="contact" id="contact" class="user" placeholder="contact" required="required" />
				  <input type="text" name="amount" id="amount" class="user" placeholder="Amount" required="required" />
				  <input type="text" name="required" id="required" class="user" placeholder="Required land" required="required" />
				 
			<input type="submit" value="update" class="submit" />


			</form>
				  </table>
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
