<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, com.market.util.Database, com.market.util.Cookies, java.util.LinkedList, java.util.List, com.market.dao.Item" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<%
List<Item> it = new LinkedList<Item>();
String name = request.getParameter("name");
String quantity_in_stock = request.getParameter("qty");
String mrp = request.getParameter("mrp");
String vendor = request.getParameter("vendor");
Database db = new Database();
PreparedStatement ps = db.getPS("insert into item_tbl values(?,?,?,?,)");
ps.setString(1, name);
ps.setInt(2, Integer.parseInt(quantity_in_stock));
ps.setDouble(3,Double.parseDouble(mrp));
ps.setString(4, vendor);
ps.executeUpdate();

response.sendRedirect("index.jsp");
%>>
</body>
</html>