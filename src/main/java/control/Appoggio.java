package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/Appoggio"})
public class Appoggio extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String id = request.getParameter("id");
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
    
    request.setAttribute("id", id);
    request.setAttribute("nome", nome);
    request.setAttribute("cognome", cognome);
    request.setAttribute("residenza", residenza);
    request.setAttribute("telefono", telefono);
    request.setAttribute("email", email);
    request.setAttribute("titolo_studio", titolo_studio);
    request.setAttribute("voto", voto);
    request.setAttribute("formazione", formazione);
    request.setAttribute("note", note);
    request.setAttribute("esito", esito);
    request.setAttribute("greenpass", greenpass);
    request.setAttribute("anno_nascita", anno_nascita);
    request.setAttribute("data_candidatura", data_candidatura);
    request.setAttribute("data_colloquio", data_colloquio);
    
    request.getRequestDispatcher("update.jsp").forward((ServletRequest)request, (ServletResponse)response);

  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String id = request.getParameter("id");
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
    
    request.setAttribute("id", id);
    request.setAttribute("nome", nome);
    request.setAttribute("cognome", cognome);
    request.setAttribute("residenza", residenza);
    request.setAttribute("telefono", telefono);
    request.setAttribute("email", email);
    request.setAttribute("titolo_studio", titolo_studio);
    request.setAttribute("voto", voto);
    request.setAttribute("formazione", formazione);
    request.setAttribute("note", note);
    request.setAttribute("esito", esito);
    request.setAttribute("greenpass", greenpass);
    request.setAttribute("anno_nascita", anno_nascita);
    request.setAttribute("data_candidatura", data_candidatura);
    request.setAttribute("data_colloquio", data_colloquio);
    
    request.getRequestDispatcher("update.jsp").forward((ServletRequest)request, (ServletResponse)response);

  }
}
