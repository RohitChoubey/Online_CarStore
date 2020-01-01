<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String id=request.getParameter("id");
	try {
		Connection con = DbConnection.getconnection();
		Statement st=con.createStatement();
		int i=st.executeUpdate("DELETE FROM sayraikidhuniyatable  WHERE id="+id);
		response.sendRedirect("AdminIndex.jsp");  
		out.println("<h3 style=color:red;>Data Deleted Successfully!</h5>");
	}
	catch(Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>