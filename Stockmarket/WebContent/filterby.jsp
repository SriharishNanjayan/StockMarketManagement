<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action = "vendorfilter.jsp", method="post">
 <div class="form-group">
    <label for="exvendor">Filter By</label>
    <input type="text" class="form-control" name="exvendor" id="exvendor" placeholder="Enter vendor Name">
  </div>
 </div>
<div class="form-group">
      <button type="submit" class="btn btn-primary">Filter</button>
    </div>
  </div>
</form>
</body>
</html>