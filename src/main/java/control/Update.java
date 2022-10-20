package control;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Candidatura;
import model.CandidaturaDao;
import utils.CandidatureUtils;

@WebServlet({"/Update"})
public class Update extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  	String data_candidatura = request.getParameter("data_candidatura");
	    String anno_nascita = request.getParameter("anno_nascita");
	    String data_colloquio = request.getParameter("data_colloquio");

	    
	    
	    Candidatura c = new Candidatura(request.getParameter("nome"), request.getParameter("cognome"), LocalDate.parse(anno_nascita), request.getParameter("residenza"), request.getParameter("telefono"), 
	    		request.getParameter("email"), request.getParameter("titolo_studio"), request.getParameter("voto"), request.getParameter("formazione"), 
	    		request.getParameter("note"), request.getParameter("esito"), request.getParameter("greenpass"));
	    c.setId(Integer.parseInt(request.getParameter("id")));
	    
	    
	    if(request.getParameter("data_colloquio") != "") {
	    	data_colloquio = request.getParameter("data_colloquio");
	    	c.setData_colloquio(LocalDate.parse(data_colloquio));
	    }if(request.getParameter("data_candidatura") != ""){
	    	c.setData_candidatura(LocalDate.parse(data_candidatura));
	    }
	    
	    

	    request.setAttribute("c", c);	    
	    request.getRequestDispatcher("update.jsp").forward((ServletRequest)request, (ServletResponse)response);
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int idC = Integer.parseInt(request.getParameter("id"));

    LocalDate data_candidaturaC = null;
    LocalDate data_colloquioC = null;
    LocalDate anno_nascitaC = null;
    
    if (!request.getParameter("data_candidatura").equalsIgnoreCase(""))
      data_candidaturaC = LocalDate.parse(request.getParameter("data_candidatura")); 
    if (!request.getParameter("data_colloquio").equalsIgnoreCase(""))
      data_colloquioC = LocalDate.parse(request.getParameter("data_colloquio")); 
    if (!request.getParameter("anno_nascita").equalsIgnoreCase(""))
      anno_nascitaC = LocalDate.parse(request.getParameter("anno_nascita"));
    
    Candidatura c = new Candidatura(request.getParameter("nome"), request.getParameter("cognome"), anno_nascitaC ,request.getParameter("residenza"),  request.getParameter("telefono"), 
    		request.getParameter("email"), request.getParameter("titolo_studio"), request.getParameter("voto"), request.getParameter("formazione"), 
    		request.getParameter("note"), request.getParameter("esito"), request.getParameter("greenpass"));
    c.setId(idC);
    
    if(data_candidaturaC != null) {
    	c.setData_candidatura(data_candidaturaC);
    }if(data_colloquioC != null) {
    	c.setData_colloquio(data_colloquioC);
    }if(anno_nascitaC != null) {
    	c.setEta(CandidatureUtils.calculateAge(anno_nascitaC));
    }
    
    CandidaturaDao cdao = new CandidaturaDao();
    
    try {
      cdao.update(c);
    } catch (SQLException e) {
      e.printStackTrace();
    } 
    
    List<Candidatura> listacandidati = new ArrayList<>();
    try {
      listacandidati = cdao.lettura();
    } catch (SQLException e) {
      e.printStackTrace();
    } 
    
    request.setAttribute("listacandidati", listacandidati);
    request.getRequestDispatcher("select.jsp").forward((ServletRequest)request, (ServletResponse)response);
  }
}
