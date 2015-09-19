<%@ page language="java" import="java.sql.*" %>

<%
  		String user=request.getParameter("newuser"); 
 String password=request.getParameter("newpassword"); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
st.executeUpdate("insert into loginfarmer values('"+user+"','"+password+"')");

out.println("<script>alert('welcome new farmer login from our home page');window.location='index1.html';</script>");

          %>
		  
		
