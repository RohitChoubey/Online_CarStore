package Database;

import java.io.File;
//import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/addmodel")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
					maxFileSize=1024*1024*50,      	// 50 MB
					maxRequestSize=1024*1024*100)  // 100 MB
public class addmodel extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public addmodel() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String id = request.getParameter("id");
		   String brands = request.getParameter("brands");
           String model = request.getParameter("model");                      
           String price = request.getParameter("price");
           String mileage = request.getParameter("mileage");
           String cc = request.getParameter("cc");
           String seating = request.getParameter("seating");
           String status = request.getParameter("status");  
           Part filePart = request.getPart("image"); 
           
	    //--------------------------------------------------------
	    	String serverPath = "C:\\Users\\User\\workspace\\CarStore\\WebContent\\image";
	    	String fileName = getFileName(filePart);
	    	OutputStream out = null;
	    	InputStream filecontent = null;
	    	final PrintWriter writer = response.getWriter();
	   	try {
	    	  out = new FileOutputStream(new File(serverPath + File.separator + fileName));
	      	  filecontent = filePart.getInputStream();
	      	  int read = 0;
	      	  final byte[] bytes = new byte[1024];
	      	  while ((read = filecontent.read(bytes)) != -1) {
	    	  out.write(bytes, 0, read);
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
	 //---------------------------------------------------file upfile
	      PrintWriter out1=response.getWriter();
		try{  

			 Connection con = DbConnection.getconnection();
			   	
	// generates sql query
			 if(!(id.equals(null)||brands.equals(null)||model.equals(null)||price.equals(null)||mileage.equals(null)||cc.equals(null)||seating.equals(null)||status.equals(null))){
				PreparedStatement ps=con.prepareStatement("insert into models values(?,?,?,?,?,?,?,?,?,?)");    
				ps.setString(1,id); 	
				ps.setString(2,brands);
	            ps.setString(3,model);            
	            ps.setString(4,price);
	            ps.setString(5,mileage);	
	            ps.setString(6,cc);
	            ps.setString(7,seating);
	            ps.setString(8,status); 
	            ps.setString(9,serverPath);
	            ps.setString(10,fileName);;
	           //.setString(9,status); 
	          //  ps.setBinaryStream(9,fis,(int)file.length());
	// execute it on test database
			int i=ps.executeUpdate();  
			if(i>0){
				out1.println("<html>");
				out1.println("<body> INSERT SUCEESFULLY</body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("/upload");
				rd.forward(request, response);
				request.setAttribute("photo",filePart);
			}
		}
		}
		
		catch (Exception e2) {	
			System.out.println(e2);
		}  
		out1.close();
	 }
}

	    private String getFileName(Part filePart) {
	        String header = filePart.getHeader("content-disposition");
	        String name = header.substring(header.indexOf("filename=\"")+10);
	        return name.substring(0, name.indexOf("\""));
	      }
}
