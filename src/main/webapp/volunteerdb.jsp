<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyLife</title>
</head>
<body>
<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<% 
	String name = request.getParameter("txtname").toString();
	String fname = request.getParameter("txtfname").toString();
	String dob = request.getParameter("txtdob").toString();
	String email = request.getParameter("txtemail").toString();
	String mob = request.getParameter("txtmobile").toString();
	String address = request.getParameter("txtaddress").toString();
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flylife","root","nikhil@1");
	Statement st = con.createStatement();
	
	String query = "INSERT INTO volunteer(Name, Father, DOB, Email, Mobile, Address, TransDate, IsActive)VALUES('"+name+"','"+fname+"','"+dob+"','"+email+"','"+mob+"','"+address+"',CURDATE(),TRUE)";
	int flag = st.executeUpdate(query);
	
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Register Successfully!!!');");
	   	out.println("location='Volunteer.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Registration Not Done Successfully, Plz Try Again!!!');");
	   	out.println("location='Volunteer.jsp';");
	   	out.println("</script>");
	}
	%>
</body>
</html>