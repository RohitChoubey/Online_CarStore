<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
 
   	        	String Password=request.getParameter("password");
                String username=request.getParameter("username");
                String email = null;
                   
                try {
                if(!(username.equals(null)&& (Password.equals(null)))){
                Connection connection = DbConnection.getconnection();
				String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
				Statement stmt = connection.createStatement();
				ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
                            
                         email = rs.getString("email");   
                       session.setAttribute("username",username);
                       session.setAttribute("email",email);
                    
                       
			response.sendRedirect("userhome.jsp?msg=success");
			
			
			}
			else
			{
			
                         response.sendRedirect("user.jsp?m1=Failed");   
                            
			}

                }
                else{
                	out.println("All fields are mandotory");
                	response.sendRedirect("user.jsp?m1=Failed");  
                }
                }
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>