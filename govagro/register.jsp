<%@ page language="java" import="java.sql.*" %>

<%
  		String farmer=request.getParameter("farmername"); 
 String location = request.getParameter("location");
 String pin = request.getParameter("pin");
 String typefarming = request.getParameter("typefarming");
 String land = request.getParameter("land");
 String year = request.getParameter("year");
 String str="";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
Statement st1 = conn.createStatement();
st.executeUpdate("insert into register values('"+farmer+"','"+location+"','"+pin+"','"+typefarming+"','"+land+"','"+year+"')");
out.println("<div id=head><span></span>" );
out.println(" <br>Statistics and permutations<br></div><center><img class=img src=images/ico.jpg width=50 height=50></center>" );

ResultSet rs1 = st1.executeQuery("select soiltype,soilattribute,rain,pest,irrigation,weed from soilinfo where pin='"+pin+"'");
%><br><center><table border=1 cellspacing=1 bordercolor=#33CC66 width=300 background-color=#33cc66>
<tr><td class="th">Soil Detail </td><td class="th">Propertise</td></tr>
<%
if(rs1.next())
{
	str=str +"<tr><td width=200>soil type</td><td>"+rs1.getString("soiltype")+
	"<tr><td width=200>soil Attribute</td><td height=50 width=95>"+
	rs1.getString("soilattribute")+"<tr><td width=200>rain</td><td>"+
	rs1.getString("rain")+"<tr><td width=200>pest</td><td>"+rs1.getString("pest")+
	"<tr><td width=200>irrigation</td><td>"+rs1.getString("irrigation")+
	"<tr><td width=200>weed</td><td>"+rs1.getString("weed") + "</td></tr>";
}
out.println(str);
          %>  
		</center>  </table>
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

		</html>
		  
		
		  
		  
		  
