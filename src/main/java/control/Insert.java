package control;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.Candidatura;
import model.CandidaturaDao;
import utils.CandidatureUtils;

@WebServlet({"/Insert"})
public class Insert extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //response.getWriter().append("Served at: ").append(request.getContextPath());
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    LocalDate data_candidaturaC = null;
    LocalDate data_colloquioC = null;
    LocalDate anno_nascitaC = null;
    String file = request.getParameter("file");


    

    
    if (!request.getParameter("data_candidatura").equalsIgnoreCase(""))
      data_candidaturaC = LocalDate.parse(request.getParameter("data_candidatura")); 
    if (!request.getParameter("data_colloquio").equalsIgnoreCase(""))
      data_colloquioC = LocalDate.parse(request.getParameter("data_colloquio")); 
    if (!request.getParameter("anno_nascita").equalsIgnoreCase(""))
      anno_nascitaC = LocalDate.parse(request.getParameter("anno_nascita")); 
    
    Candidatura c = new Candidatura(request.getParameter("ambito"), request.getParameter("nome"), request.getParameter("cognome"), anno_nascitaC, request.getParameter("residenza"), request.getParameter("telefono"), 
    		request.getParameter("email"), request.getParameter("titolodistudio"), request.getParameter("voto"), request.getParameter("formazione"), 
    		request.getParameter("note"), request.getParameter("esito"));
    
    if(data_candidaturaC != null) {
    	c.setData_candidatura(data_candidaturaC);
    }if(data_colloquioC != null) {
    	c.setData_colloquio(data_colloquioC);
    }if(anno_nascitaC != null) {
    	c.setEta(CandidatureUtils.calculateAge(anno_nascitaC));
    }if(file != null) {
    	c.setFile(file);
    }
    
    System.out.println(file);
    
    CandidaturaDao cdao = new CandidaturaDao();
    
    
    
   
    
    try {
      cdao.insert(c);
    } catch (SQLException e) {
      e.printStackTrace();
    }
    

    request.getRequestDispatcher("home.jsp").forward(request, response);
  }
}
