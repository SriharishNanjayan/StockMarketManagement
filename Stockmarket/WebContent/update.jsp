<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, com.market.util.Database, com.market.util.Cookies,java.util.LinkedList, java.util.List, com.market.dao.Item"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Item> it = new LinkedList<Item>();
String discount = request.getParameter("exampleInputdiscount");
Database db = new Database();
PreparedStatement ps = db.getPS("update item_tbl set discount=?");
ps.setDouble(1,Double.parseDouble(discount));
ps.executeUpdate();
response.sendRedirect("index.jsp");
%>>
</body>
</html>