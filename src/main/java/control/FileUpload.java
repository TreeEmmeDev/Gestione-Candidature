package control;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filename = request.getParameter("file");
		System.out.println(filename);
		filename = filename.replace(" ", "-");
		
	
		try {
			File file = new File("C:\\curriculum-candidati\\" + filename);
			if (file.exists()) {
				Desktop.getDesktop().open(file);
				response.getWriter().append("Il file e' stato aperto, puoi chiudere questa finestra.");
			}else {
				response.getWriter().append("Il file ").append(filename).append(" non e' stato trovato");
			}
		}catch(Exception e) {
			response.getWriter().append("C'e' stato un problema nell' aprire il file: \n\n").append(e.getMessage());
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		File directory = new File("C:\\curriculum-candidati\\");
	    if (! directory.exists()){
	        directory.mkdir();
	    }
	    
	    

	    Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		fileName = fileName.replace(" ", "-");
		File f = new File("C:\\curriculum-candidati\\"+fileName);
		
		if(f.exists()) {
		    f.delete();
		}
		for (Part part : request.getParts()) {
			part.write("C:\\curriculum-candidati\\" + fileName);
		}

		 	
		  
	}

}
