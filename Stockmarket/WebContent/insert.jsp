<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, com.market.util.Database, com.market.util.Cookies, java.util.LinkedList, java.util.List, com.market.dao.Item" %>
<title>Insert title here</title>
</head>
<body>
<%
 String identity = request.getParameter("exampleid");
 String name = request.getParameter("examplename");
 String quantity_in_stock = request.getParameter("examplequantity");
 String mrp = request.getParameter("examplemrp");
 String discount = request.getParameter("examplediscount");
 String vendor = request.getParameter("examplevendor");
 String manufacturing_date = request.getParameter("exampledate1");
 String expiry_date = request.getParameter("exampledate2");
 Database db = new Database();
 //PreparedStatement ps = db.getPS("select * from item_tbl where identity=? and name=? and mrp=? and vendor=? and manufacturing_date=? and expiry_date=?;");
 //ResultSet rs = ps.executeQuery();
	 PreparedStatement ps = db.getPS("insert into item_tbl values(?,?,?,?,?,?,?,?)");
	 ps.setString(1, identity);
	 ps.setString(2, name);
	 ps.setInt(3, Integer.parseInt(quantity_in_stock));
	 ps.setDouble(4,Double.parseDouble(mrp));
	 ps.setDouble(5,Double.parseDouble(discount));
	 ps.setString(6, vendor);
	 ps.setString(7, manufacturing_date);
	 ps.setString(8, expiry_date);
	 ps.executeUpdate();
	 response.sendRedirect("index.jsp");
 %>
</body>
</html>
