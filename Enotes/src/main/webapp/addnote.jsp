<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="allComponent/allcomponent.jsp" %>
<link rel="stylesheet" href="styles/style.css">
<title>Insert title here</title>
</head>
<%@include file="allComponent/navbar.jsp" %>
<body>
<div class="container mt-5">
<div class="row">
<div class="col-md-12">
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Note">
  </div>
  <div class="form-group">
   <label for="exampleInputEmail1">Note Description</label>
   <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" 
   placeholder="Enter Description" style="height: 150px">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
</div>
</body>
</div>
</body>
</html>