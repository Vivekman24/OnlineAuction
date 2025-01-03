<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" import="samplePackage.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
</head>
<body>
    <h2>Register for OnlineAuction</h2>
    
    <!-- Registration Form -->
    <form action="RegisterUser.jsp" method="post">
        Full Name: <input type="text" name="name" required><br>
        Username: <input type="text" name="userName" required><br>
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>
    
    <!-- Link to Login Page -->
    <p>Already registered? <a href="Login.jsp">Login here</a>.</p>
</body>
</html>


