<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<title>Add new item</title>
<style>
.center-content{
	width: 512px;
	margin: 150px auto;
}
</style>
</head>
<body>
<form class="form-horizontal content-center " action="insert.jsp" method = "post">
<div class="col-lg-6">
<div class="form-group">
    <label for="exampleid">Item identity no</label>
    <input type="text" class="form-control"  name="exampleid" id="exampleid" placeholder="Identity no">
  </div>
  <div class="form-group">
    <label for="examplename">Item name</label>
    <input type="text" class="form-control" name="examplename" id="examplename" placeholder="item name">
  </div>
   <div class="form-group">
    <label for="examplequantity">Quantity_in_stock</label>
    <input type="text" class="form-control"  name="examplequantity" placeholder="Quantity">
  </div>
  <div class="form-group">
    <label for="examplemrp">Maximum retail price</label>
    <input type="text" class="form-control" name="examplemrp" id="examplemrp" placeholder="mrp">
  </div>
    <div class="form-group">
    <label for="examplediscount">Discount</label>
    <input type="text" class="form-control" name="examplediscount" id="examplediscount" placeholder="Discount">
  </div>
   <div class="form-group">
    <label for="examplevendor">Item Vendor</label>
    <input type="text" class="form-control" name="examplevendor" id="examplevendor" placeholder="Vendor name">
  </div>
   <div class="form-group">
    <label for="exampledate1">Item manufacturing date</label>
    <input type="text" class="form-control" name="exampledate1" id="exampledate1" placeholder="Manufacturing Date">
  </div>
    <div class="form-group">
    <label for="exampledate2">Item expiry date</label>
    <input type="text" class="form-control" name="exampledate2" id="exampledate2" placeholder="Expiry Date">
  </div>
  <div class="form-group">
      <button type="submit" class="btn btn-primary">Add</button>
    </div>
  </div>
  </div>
 </form>
</body>
</html>