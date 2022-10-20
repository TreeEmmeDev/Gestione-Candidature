package control;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Candidatura;

@WebServlet({"/AppoggioDettaglio"})
public class AppoggioDettaglio extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
    String data_candidatura = request.getParameter("data_candidatura");
    String anno_nascita = request.getParameter("anno_nascita");
    
    Candidatura c = new Candidatura(request.getParameter("nome"), request.getParameter("cognome"), LocalDate.parse(anno_nascita), request.getParameter("residenza"), request.getParameter("telefono"), 
    		request.getParameter("email"), request.getParameter("titolo_studio"), request.getParameter("voto"), request.getParameter("formazione"), 
    		request.getParameter("note"), request.getParameter("esito"), request.getParameter("greenpass"));
    c.setId(Integer.parseInt(request.getParameter("id")));
    
    String data_colloquio = null;
    if(request.getParameter("data_colloquio") != "") {
    	data_colloquio = request.getParameter("data_colloquio");
    	c.setData_colloquio(LocalDate.parse(data_colloquio));
    }if(request.getParameter("data_candidatura") != ""){
    	c.setData_candidatura(LocalDate.parse(data_candidatura));
    }
    
    
    request.setAttribute("c", c);
    request.getRequestDispatcher("details.jsp").forward((ServletRequest)request, (ServletResponse)response);

  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }
}
