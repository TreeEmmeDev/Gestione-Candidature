package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
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

@WebServlet({"/Select"})
public class Select extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    CandidaturaDao cdao= new CandidaturaDao();
    List<Candidatura> listacandidati = new ArrayList<>();
    
	String ambito = request.getParameter("ambito");
    String nome = request.getParameter("nome");
    String cognome = request.getParameter("cognome");
    String esito = request.getParameter("esito");
        
    try {
	    if(nome == null && cognome == null) {
	    	if(esito == null) {
	    		listacandidati = cdao.lettura();	
	    	}else if(esito.equals("Idoneo")) {
		    	listacandidati = cdao.filtriRicerca("Idoneo");
		    }else if(esito.equals("NonIdoneo")) {
		    	listacandidati = cdao.filtriRicerca("Non Idoneo");
		    }else if(esito.equals("InAttesa")) {
		    	listacandidati = cdao.filtriRicerca("In Attesa");
		    }else if(esito.equals("DaRicontattare")) {
		    	listacandidati = cdao.filtriRicerca("Da Ricontattare");
		    }
	    	
		}else if(nome != null && cognome == null) {
		  	listacandidati = cdao.letturaRicerca("nome", nome, cognome);
		}else if(nome == null && cognome != null) {
			listacandidati = cdao.letturaRicerca("cognome", nome, cognome);
		}else{
			listacandidati = cdao.letturaRicerca("cognomeenome", nome, cognome);
		}
	    
	    
	    
    } catch (SQLException e) {
		e.printStackTrace();
	} 

    
    request.setAttribute("listacandidati", listacandidati);
    request.getRequestDispatcher("select.jsp").forward((ServletRequest)request, (ServletResponse)response);
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }
}
