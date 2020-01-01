<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	//int id ;
	//id = Integer.parseInt(request.getParameter("id"));
	String id = request.getParameter("id");
	String brands = request.getParameter("brands");
	String model = request.getParameter("model");
	String price = request.getParameter("price");
	String mileage = request.getParameter("mileage");
	String cc = request.getParameter("cc");
	String seating = request.getParameter("seating");
	String status = request.getParameter("status");
	///out.println("id is=" + id);
	//if (id != 0) {
		PreparedStatement ps = null;
		//int id = Integer.parseInt(id);
		try {
			if ((!(brands.equals(null) && !(model.equals(null))) && !(price.equals(null) && !(mileage.equals(null))&& !(cc.equals(null)) &&!(seating.equals(null))&&!(status.equals(null))))) {
				Connection con = DbConnection.getconnection();
				String sql = "Update models set id=?,brands=?,model=?,price=?,mileage=?,cc=?,seating=?,status=? where id="
						+ id;
				ps = con.prepareStatement(sql);
				//out.println("debug");
				ps.setString(1, id);//(1, id);
				ps.setString(2, brands);
				ps.setString(3, model);
				ps.setString(4, price);
				ps.setString(5, mileage);
				ps.setString(6, cc);
				ps.setString(7, seating);
				ps.setString(8, status);
				int i = ps.executeUpdate();
				if (i > 0) {
					response.sendRedirect("viewmodels.jsp? sucess");
					out.print("<<b>Record Updated Successfully</b>");
					//out.println("kaha ja raha h");
				} else {
					response.sendRedirect("viewmodels.jsp");
					out.print("There is a problem in updating Record.");
					//out.println("vps aa ");
				}
			}
			else{
				out.println("All Fileds are Madotry");}
			}
		 catch (SQLException sql) {
			out.println("Nhi aayega ");
			request.setAttribute("error", sql);
			out.println(sql);
		}
	//}
%>