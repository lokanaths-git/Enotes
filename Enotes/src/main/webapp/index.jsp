<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@include file="allComponent/allcomponent.jsp" %>
<link rel="stylesheet" href="styles/style.css">

<style type="text/css">
.back-img{
    background: url("allComponent/image/new-book_2.jpg");
    height:80vh;
    margin-left:10%;
    background-repeat: no-repeat;
 
}
.class1 {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 70%;
}

.login-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width:80%;
    margin-right: 10%;
}

.login-form {
    display: flex;
    flex-direction: column;
}

h2 {
    text-align: center;
    color: #333;
}

label {
    margin-top: 10px;
}

input {
    padding: 8px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
footer {
    margin-top: 25px;
    text-align: center;
    color: #777;
}

footer p {
    margin: 0;
}
header {
     background-image: linear-gradient(to right top, #1488CC, #2B32B2);
      color: white;
      text-align: center;
      padding: .5em;
    }
  .button {
      display: inline-block;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      font-size: 16px;
      cursor: pointer;
      color: white;
      background-color: #ffa751;
      border-radius: 5px;
      transition: background-color 0.3s, color 0.3s;
      margin-top: 10px;
      margin-left: 33%;
    }

.button:hover {
      background-color: #3498db;
      color: #fff;
    }

</style>
</head>
<body>
<%-- <%@include file="allComponent/navbar.jsp" %>
 --%>
 <header>
    <h1>E-Note Management System</h1>
  </header>
 <div style="display: flex;justify-content: space-evenly;">
<div class="container-fluid back-img">
</div>

<div class="class1">
    <div class="login-container">
        <form class="login-form" action="LoginServlet" method="post">
            <h2>Login</h2>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Login</button>
            <%
String invalidMsg=(String)session.getAttribute("login-fail");
if(invalidMsg!=null){
%>
 <div class="alert alert-danger" role="alert"><%=invalidMsg%></div>	
<%
session.removeAttribute("login-fail");
}
%>
        </form>
        <a href="register.jsp" class="button">New Register</a>
    </div>
    

      
</div>
</div>
   <footer>
        <p>&copy; 2023 Your Company Name. All rights reserved.</p>
    </footer>
</body>
</html>