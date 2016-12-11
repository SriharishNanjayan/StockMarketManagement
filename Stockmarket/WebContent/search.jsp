<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, com.market.util.Database, com.market.util.Cookies,java.util.LinkedList, java.util.List, com.market.dao.Item" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<title>reach Items</title>
</head>
<body>
<%
List<Item> it = new LinkedList<Item>();
String name = request.getParameter("name");
Database db = new Database();
PreparedStatement ps = db.getPS("select * from item_tbl where name like ?;");
ps.setString(1, "%"+name+"%");
ps.executeUpdate();
for(Item each:it){
	 out.println("<tr><td>"+each.getIdentity()+"</td><td>"+ each.getName()+"</td><td>"+ each.getQuantity_in_stock()+"</td><td>"+ each.getMrp()+"</td><td>"+ each.getDiscount()+"</td><td>"+ each.getVendor()+"</td><td>"+ each.getManufacturing_date()+"</td><td>"+ each.getExpiry_date()+"</td> ");
	 	out.println("<td> <form action=\"edit.jsp\" method=\"get\"> <input type=\"hidden\" name=\"id\" value="+each.getIdentity()+" /> <input type=\"submit\" value=\"Edit\" class=\"btn btn-info btn-xs\" /> </form>  </td>");
	 	out.println("<td> <form action=\"delete.jsp\" method=\"get\"> <input type=\"hidden\" name=\"id\" value="+each.getIdentity()+" /> <input type=\"submit\" value=\"Delete\" class=\"btn btn-info btn-xs\" /> </form>  </td>");

}
db.close();
%>>
</body>
</html>