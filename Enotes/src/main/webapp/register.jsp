<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="allComponent/allcomponent.jsp" %>
<link rel="stylesheet" href="styles/style.css">
<title>Register</title>
 <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    header {
      background-color: #2B32B2;
      color: white;
      padding: 10px;
      text-align: center;
    }

    .container {
      width: 50%;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin: 10px 0;
    }

    input {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      box-sizing: border-box;
    }

    button {
      background-color: green;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      margin-left: 37%;
    }

    button:hover {
      background-color: #555;
    }
    .btn 
     {
      background-color: #ffa751;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

.btn:hover {
      background-color: #3498db;
      color: #fff;
    }
  </style>
</head>
<body>

  <header>
    <h1>Registration Page</h1>
  </header>
  
  <div class="container">
 

    <form action="UserServlet" method="post">
      <label for="email">Full Name:</label>
      <input type="text" id="fname" name="fname" required>
    
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>

      <!-- <label for="confirmPassword">Confirm Password:</label>
      <input type="password" id="confirmPassword" name="confirmPassword" required> -->

      <button type="submit">Register</button>
      <a href="index.jsp" class="btn">Back</a>
 <%
String regMsg=(String)session.getAttribute("reg-success");
if(regMsg!=null){
%>
 <div class="alert alert-success" role="alert"><%=regMsg%></div>	
<%
session.removeAttribute("reg-success");
}
%>

<%
String failMsg=(String)session.getAttribute("failed-msg");
if(failMsg!=null){
%>
 <div class="alert alert-danger" role="alert"><%=failMsg%></div>	
<%
session.removeAttribute("failed-msg");
}
%>
      
    </form>
  </div>
</body>
</html>