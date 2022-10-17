package control;

import java.io.IOException;
import java.sql.SQLException;
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

@WebServlet({"/Select"})
public class Select extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    CandidaturaDao cdao= new CandidaturaDao();
    List<Candidatura> listacandidati = new ArrayList<>();
    
    try {
      listacandidati = cdao.lettura();
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
