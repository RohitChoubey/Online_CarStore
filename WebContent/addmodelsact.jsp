<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.annotation.MultipartConfig;"%>
       <%				     
	            String brands = request.getParameter("brands");
	            String model = request.getParameter("model");                      
	            String price = request.getParameter("price");
	            String mileage = request.getParameter("mileage");
	            String cc = request.getParameter("cc");
	            String seating = request.getParameter("seating");
	            Part filePart = request.getPart("image"); 
	           // String image = request.getParameter("image");
	             String status = request.getParameter("status");           			
	            try {			
	            	Connection getconnection = DbConnection.getconnection();     
		            PreparedStatement ps=getconnection .prepareStatement("insert into models values(?,?,?,?,?,?,?,?)"); 
		            ps.setString(1,brands);
		            ps.setString(2,model);            
		            ps.setString(3,price);
		            ps.setString(4,mileage);	
		            ps.setString(5,cc);
		            ps.setString(6,seating);
		            ps.setString(7,filePart);
		            ps.setString(8,status); 
		            //file upload
	             	String serverPath ="/tmp/Images";
			    	String fileName = getFileName(filePart);
			    	OutputStream out1 = null;
			    	InputStream filecontent = null;
			    	final PrintWriter writer = response.getWriter();
				   	try {
				    	  out1 = new FileOutputStream(new File(serverPath + File.separator + fileName));
				      	  filecontent = filePart.getInputStream();
				      	  int read = 0;
				      	  final byte[] bytes = new byte[1024];
				      	  while ((read = filecontent.read(bytes)) != -1) {
				    	  out1.write(bytes, 0, read);
				      }
				      writer.println("New file " + fileName + " created at " + serverPath);
			
				   } 
				    catch (FileNotFoundException fne) {
				      writer.println("Missing file or no insufficient permissions.");
				      writer.println(" ERROR: " + fne.getMessage());
				    } 
				    finally {
				      if (out != null) {
				        out.close();
				      }
				      if (filecontent != null) {
				         filecontent.close();
				      }
				      if (writer != null) {
				        writer.close();
				      }
		            int x=ps.executeUpdate();
		            if(x>0) {
		                response.sendRedirect("adminhome.jsp?m2=success");
		            }
		             else {
		                response.sendRedirect("adminhome.jsp?m3=Failed");   
		            }  
		    
	              }
	            }
             catch (Exception e)  {
             	e.printStackTrace();
             }
            %>
          