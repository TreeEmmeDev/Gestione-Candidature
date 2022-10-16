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
    response.getWriter().append("Served at: ").append(request.getContextPath());
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int idC = Integer.parseInt(request.getParameter("id"));
    String nome = request.getParameter("nome");
    String cognome = request.getParameter("cognome");
    String residenza = request.getParameter("residenza");
    String telefono = request.getParameter("telefono");
    String email = request.getParameter("email");
    String titolo_studio = request.getParameter("titolo_studio");
    String voto = request.getParameter("voto");
    String formazione = request.getParameter("formazione");
    String note = request.getParameter("note");
    String esito = request.getParameter("esito");
    String greenpass = request.getParameter("greenpass");
    String data_candidatura = request.getParameter("data_candidatura");
    String data_colloquio = request.getParameter("data_colloquio");
    String anno_nascita = request.getParameter("anno_nascita");
    LocalDate data_candidaturaC = null;
    LocalDate data_colloquioC = null;
    LocalDate anno_nascitaC = null;
    
    if (!data_candidatura.equalsIgnoreCase(""))
      data_candidaturaC = LocalDate.parse(data_candidatura); 
    if (!data_colloquio.equalsIgnoreCase(""))
      data_colloquioC = LocalDate.parse(data_colloquio); 
    if (!anno_nascita.equalsIgnoreCase(""))
      anno_nascitaC = LocalDate.parse(anno_nascita); 
    
    Candidatura c = new Candidatura(anno_nascita, anno_nascita, anno_nascitaC, anno_nascita, anno_nascita, anno_nascita, anno_nascita, anno_nascita, anno_nascita, anno_nascitaC, anno_nascitaC, anno_nascita, anno_nascita, anno_nascita);
    CandidaturaDao cdao = new CandidaturaDao();
    
//    c.setId(idC);
//    c.setNome(nome);
//    c.setCognome(cognome);
//    c.setEta(String.valueOf(CandidatureUtils.calculateAge(anno_nascitaC)));
//    c.setResidenza(residenza);
//    c.setTelefono(telefono);
//    c.setEmail(email);
//    c.setTitolo_studio(titolo_studio);
//    c.setVoto(voto);
//    c.setFormazione(formazione);
//    c.setNote(note);
//    c.setEsito(esito);
//    c.setGreenpass(greenpass);
//    c.setData_candidatura(data_candidaturaC);
//    c.setData_colloquio(data_colloquioC);
//    c.setAnno_nascita(anno_nascitaC);
    
    System.out.println(c);
    
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
