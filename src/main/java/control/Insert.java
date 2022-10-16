package control;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
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

@WebServlet({"/Insert"})
public class Insert extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.getWriter().append("Served at: ").append(request.getContextPath());
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int result = 0;
    
    LocalDate data_candidaturaC = null;
    LocalDate data_colloquioC = null;
    LocalDate anno_nascitaC = null;
    
    if (!request.getParameter("data_candidatura").equalsIgnoreCase(""))
      data_candidaturaC = LocalDate.parse(request.getParameter("data_candidatura")); 
    if (!request.getParameter("data_colloquio").equalsIgnoreCase(""))
      data_colloquioC = LocalDate.parse(request.getParameter("data_colloquio")); 
    if (!request.getParameter("anno_nascita").equalsIgnoreCase(""))
      anno_nascitaC = LocalDate.parse(request.getParameter("anno_nascita")); 
    
    Candidatura c = new Candidatura(request.getParameter("nome"), request.getParameter("cognome"), anno_nascitaC, request.getParameter("residenza"), request.getParameter("telefono"), 
    		request.getParameter("email"), request.getParameter("titolo_studio"), request.getParameter("voto"), request.getParameter("formazione"), data_candidaturaC, data_colloquioC, 
    		request.getParameter("note"), request.getParameter("esito"), request.getParameter("greenpass"));
    
    CandidaturaDao cdao = new CandidaturaDao();

    
    try {
      result = cdao.insert(c);
    } catch (SQLException e) {
      e.printStackTrace();
    }
    
    request.setAttribute("result", Integer.valueOf(result));
    request.getRequestDispatcher("index.jsp").forward(request, response);
  }
}
