<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, com.market.util.Database, com.market.util.Cookies, java.util.LinkedList, java.util.List, com.market.dao.Item" %>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<title>Home - Stock</title>
<style>
.center-content{
	width: 512px;
	margin: 150px auto;
}
</style>
</head>
<body>
<form class="form-Inline center-content" action ="search.jsp" method = "post">
  <div class="form-group">
	<div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control" name="name" id="name" placeholder="Search for items">
      <span class="input-group-btn">
        <button class="btn btn-primary " type="submit">
        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
        </button>
        </span>
	</div>
	</div>
	</div>
	<br></br>
	<div class="form-group">
	<span class="input-group-btn">
	<a class="btn btn-default" id="discount" href="discount.jsp" role="button">Apply Discount</a>
	<a class="btn btn-default" id="vendor" href="filterby.jsp" role="button">Filter By</a>
	<a class="btn btn-default" href="additem.jsp" role="button">Add New</a>
	</span>
	</div>
	<br></br>
	 <div class="form-group">
	  	<label for="fields">Sort By Field   </label>
	    <select class="form-control" id="fields" name="field">
		  <option value="Identity">Identity</option>
		  <option value="Name">Name</option>
		  <option value="MaximumRetailPrice">Maximum Retail Price</option>
		  <option value="QuantityInStock">Quantity In Stock</option>
		  <option value="Vendor">Vendor</option>
		</select>
	  </div>
	  <div class="form-group">
	  	<label for="sorting">on either   </label>
	    <select class="form-control" id="sorting" name="sort">
		  <option value="Ascending">Ascending</option>
		  <option value="Descending">Descending</option>
		</select>
	  </div>
	  <button type="submit" class="btn btn-primary">Get View</button>
</form class= "form-Horizontal content-center">
<table class="table table-condensed" border="2" width=50%>
<tr> 
<th>Identity_No</th> 
<th>Item_Name</th>
<th>Quantity</th> 
<th>MRP</th> 
<th>Discount</th>
<th>Vendor Name</th>
<th>Manufacturing_Date</th>
<th>Expiry_date</th> 
<th>Edit</th>
<th>Delete</th>
</tr>
</form>
<%
 List<Item> it = new LinkedList<Item>();
 Database db = new Database();
 PreparedStatement ps = db.getPS("select * from item_tbl ");
 ResultSet rs = ps.executeQuery();
 while(rs.next()){
	it.add( new Item(rs.getString(1), rs.getString(2), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(3), rs.getDouble(4), rs.getDouble(5)));
 }
 for(Item each:it){
	 out.println("<tr><td>"+each.getIdentity()+"</td><td>"+ each.getName()+"</td><td>"+ each.getQuantity_in_stock()+"</td><td>"+ each.getMrp()+"</td><td>"+ each.getDiscount()+"</td><td>"+ each.getVendor()+"</td><td>"+ each.getManufacturing_date()+"</td><td>"+ each.getExpiry_date()+"</td> ");
	 	out.println("<td> <form action=\"edit.jsp\" method=\"get\"> <input type=\"hidden\" name=\"id\" value="+each.getIdentity()+" /> <input type=\"submit\" value=\"Edit\" class=\"btn btn-info btn-xs\" /> </form>  </td>");
	 	out.println("<td> <form action=\"delete.jsp\" method=\"get\"> <input type=\"hidden\" name=\"id\" value="+each.getIdentity()+" /> <input type=\"submit\" value=\"Delete\" class=\"btn btn-info btn-xs\" /> </form>  </td>");

 }
 rs.close();
 db.close();
 
 %>
</table>
</body>
</html>