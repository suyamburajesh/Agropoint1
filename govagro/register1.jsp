<%@ page language="java" import="java.sql.*" %>

<%
  		String farmer=request.getParameter("farmername"); 
 String location = request.getParameter("location");
 String pin = request.getParameter("pin");
 String contact = request.getParameter("contact");
 String amount = request.getParameter("amount");
 String required = request.getParameter("required");
 String str="";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
Statement st1 = conn.createStatement();
st.executeUpdate("insert into landlessuser values('"+farmer+"','"+location+"','"+pin+"','"+contact+"','"+amount+"','"+required+"')");
out.println("<div id=head><span></span>"  );
out.println(" <br>Least land Registration For Landless users<br></div><center><img class=img src=images/ico.jpg width=50 height=50></center>" );
ResultSet rs1 = st1.executeQuery("select Area,amount,pin,soiltype,soliattributes,landavailable from least where pin='"+pin+"'");
%><br><br><center><table border=1 cellspacing=1 bordercolor=#33CC66  width=300><tr><td class="th">Soil Detail </td><td class="th">Propertise</td></tr><%
if(rs1.next())
{
	str=str +"<tr><td width=200>Area</td><td>"+rs1.getString("Area")+
	"<tr><td width=200>Amount</td><td height=50 width=95>"+
	rs1.getString("amount")+"<tr><td width=200>Pincode</td><td>"+
	rs1.getString("pin")+"<tr><td width=200>Soil type</td><td>"+rs1.getString("soiltype")+
	"<tr><td width=200>soil Attributes</td><td>"+rs1.getString("soliattributes")+
	"<tr><td width=200>Available land</td><td>"+rs1.getString("landavailable") + "</td></tr>";
}
out.println(str);
%>

<html>
		  <head>
		  <style>
		  	      *{
		padding:0;
		margin :0;
	}
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
		.th{
			background-color:#33CC66;
			height:30px;
		}
		}
		  
	
		  </style>
		  </head>
	<body>
	
	</body>
		</html>
		  
		
		  
		  
		  
