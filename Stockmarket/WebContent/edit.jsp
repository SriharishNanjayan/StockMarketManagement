<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>

<form class="form-horizontal" action="edit-item.jsp"  padding: 10px 0;">
  <input type="hidden" name="id" value="P02" />
  <div class="form-group">
  	<label for="name" class="col-sm-4 control-label">Item Name</label>
    <div class="col-sm-6">
      <input type="text" class="form-control"  id="name" name="name" placeholder="Item Name">
    </div>
  </div>
  <div class="form-group">
  	<label for="qty" class="col-sm-4 control-label">Item Quantity</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="qty" name="qty" placeholder="Item Quantity">
    </div>
  </div>
  <div class="form-group">
  	<label for="mrp" class="col-sm-4 control-label">Item Max.Ret.Price</label>
    <div class="col-sm-6">
      <input type="text" class="form-control"  id="mrp" name="mrp" placeholder="Item MRP. in Rs.">
    </div>
  </div>
  <div class="form-group">
  	<label for="vendor" class="col-sm-4 control-label">Item Vendor Detail</label>
    <div class="col-sm-6">
      <input type="text" class="form-control"  id="vendor" name="vendor" placeholder="Item Vendor">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-6">
      <button type="submit" class="btn btn-primary">Update Item</button>
    </div>
  </div>
</form>
</body>
</html>