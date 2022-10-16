package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Candidatura;
import model.CandidaturaDao;

@WebServlet({"/Delete"})
public class Delete extends HttpServlet implements Servlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.getWriter().append("Served at: ").append(request.getContextPath());
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int idC = Integer.parseInt(request.getParameter("id"));
    
    CandidaturaDao cdao = new CandidaturaDao();
    try {
      cdao.delete(idC);
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
