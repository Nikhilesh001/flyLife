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
	String email = request.getParameter("txtemail").toString();
	String mob = request.getParameter("txtmobile").toString();
	String sub = request.getParameter("txtsubject").toString();
	String msg = request.getParameter("txtmessage").toString();
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flylife","root","root");
	Statement st = con.createStatement();
	
	String query = "INSERT INTO Contact(NAME, Email, Mobile, SUBJECT, Message, TransDate, IsActive)VALUES('"+name+"','"+email+"','"+mob+"','"+sub+"','"+msg+"',CURDATE(),TRUE)";
	int flag = st.executeUpdate(query);
	
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Message Send Successfully!!!');");
	   	out.println("location='index.jsp#contact';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Message Not Send Successfully, Plz Try Again!!!');");
	   	out.println("location='index.jsp#contact';");
	   	out.println("</script>");
	}
	%>
</body>
</html>