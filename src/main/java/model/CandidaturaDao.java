package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

public class CandidaturaDao {
	
	
  public void insert(Candidatura c) throws SQLException {
    Connection conn = Connessione.getConnessione();
    String sql = "INSERT INTO candidatura (nome,cognome,anno_nascita,eta,residenza,telefono,email,titolo_studio,voto,formazione,data_candidatura,data_colloquio,note,esito,greenpass) "
    		+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setString(1, c.getNome());
    
    System.out.println(c.getNome());
    
    
    ps.setString(2, c.getCognome());
    
    if (c.getAnno_nascita() == null) {
      ps.setDate(3, null);
    } else {
      ps.setDate(3, Date.valueOf(c.getAnno_nascita()));
    } 
    
    ps.setInt(4, c.getEta());
    ps.setString(5, c.getResidenza());
    ps.setString(6, c.getTelefono());
    ps.setString(7, c.getEmail());
    ps.setString(8, c.getTitolo_studio());
    ps.setString(9, c.getVoto());
    ps.setString(10, c.getFormazione());
    
    if (c.getData_candidatura() == null) {
      ps.setDate(11, null);
    } else {
      ps.setDate(11, Date.valueOf(c.getData_candidatura()));
    } 
    
    if (c.getData_colloquio() == null) {
      ps.setDate(12, null);
    } else {
      ps.setDate(12, Date.valueOf(c.getData_colloquio()));
    } 
    
    ps.setString(13, c.getNote());
    ps.setString(14, c.getEsito());
    ps.setString(15, c.getGreenpass());
    
    ps.executeUpdate();
    
  }
  
  public List<Candidatura> lettura() throws SQLException {
    Connection conn = Connessione.getConnessione();
    String Sql = "SELECT * FROM candidatura";
    
    List<Candidatura> lista = new ArrayList<>();
    PreparedStatement ps = conn.prepareStatement(Sql);
    ResultSet rs = ps.executeQuery();
    
    while (rs.next()) {
      Candidatura p = new Candidatura();
      
      p.setNome(rs.getString("nome"));
      p.setCognome(rs.getString("cognome"));
      
      LocalDate localanno = Instant.ofEpochMilli(rs.getDate("anno_nascita").getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
      p.setAnno_nascita(localanno);
      
      LocalDate data_candidaturalocal = Instant.ofEpochMilli(rs.getDate("data_candidatura").getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
      p.setData_candidatura(data_candidaturalocal);
      
      LocalDate data_colloquiolocal = null;
      
      if(rs.getDate("data_colloquio") != null) {
    	  data_colloquiolocal = Instant.ofEpochMilli(rs.getDate("data_colloquio").getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
      }
      
      p.setData_colloquio(data_colloquiolocal);
      
      p.setResidenza(rs.getString("residenza"));
      p.setTelefono(rs.getString("telefono"));
      p.setEmail(rs.getString("email"));
      p.setTitolo_studio(rs.getString("titolo_studio"));
      p.setVoto(rs.getString("voto"));
      p.setFormazione(rs.getString("formazione"));
      p.setNote(rs.getString("note"));
      p.setEsito(rs.getString("esito"));
      p.setGreenpass(rs.getString("greenpass"));
      p.setEta(Integer.parseInt(rs.getString("eta")));
      p.setId(rs.getInt("id"));
      
      lista.add(p);
    }
    
    return lista;
  }
  
  public void delete(int id) throws SQLException {
	  
    Connection conn = Connessione.getConnessione();
    
    String Sql = "DELETE FROM candidatura WHERE id=?";
    PreparedStatement ps = conn.prepareStatement(Sql);
    
    ps.setInt(1, id);
    ps.executeUpdate();
  }
  
  public void update(Candidatura c) throws SQLException {
    Connection conn = Connessione.getConnessione();
    String Sql = "UPDATE candidatura SET nome=?, cognome=?, anno_nascita=?, residenza=?, telefono=?, email=?, titolo_studio=?, voto=?, formazione=?, data_candidatura=?, data_colloquio=?, note=?, esito=?, greenpass=? WHERE id=?";
    PreparedStatement ps = conn.prepareStatement(Sql);
    
    ps.setString(1, c.getNome());
    ps.setString(2, c.getCognome());
    ps.setDate(3, Date.valueOf(c.getAnno_nascita()));
    ps.setString(4, c.getResidenza());
    ps.setString(5, c.getTelefono());
    ps.setString(6, c.getEmail());
    ps.setString(7, c.getTitolo_studio());
    ps.setString(8, c.getVoto());
    ps.setString(9, c.getFormazione());
    ps.setDate(10, Date.valueOf(c.getData_candidatura()));
    ps.setDate(11, Date.valueOf(c.getData_colloquio()));
    ps.setString(12, c.getNote());
    ps.setString(13, c.getEsito());
    ps.setString(14, c.getGreenpass());
    ps.setInt(15, c.getId());
    
    ps.executeUpdate();
  }
  
  
  
  
  public List<Candidatura> letturaRicerca(String operazione, String nome, String cognome) throws SQLException {
	    Connection conn = Connessione.getConnessione();
	    String Sql = "";
	    
	    if(operazione.equalsIgnoreCase("nome")) {
	    	Sql = "SELECT * FROM candidatura WHERE nome LIKE '%" + nome + "%'";
	    }else if(operazione.equalsIgnoreCase("cognome")) {
	    	Sql = "SELECT * FROM candidatura WHERE cognome LIKE '%" + cognome + "%'";
	    }else {
	    	Sql = "SELECT * FROM candidatura WHERE nome LIKE '%" + nome + "%' AND cognome LIKE '%" + cognome + "%'";
	    }
	    
	    
	    List<Candidatura> lista = new ArrayList<>();
	    PreparedStatement ps = conn.prepareStatement(Sql);
	    ResultSet rs = ps.executeQuery();
	    
	    while (rs.next()) {
	      Candidatura p = new Candidatura();
	      
	      p.setNome(rs.getString("nome"));
	      p.setCognome(rs.getString("cognome"));
	      
	      LocalDate localanno = Instant.ofEpochMilli(rs.getDate("anno_nascita").getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
	      p.setAnno_nascita(localanno);
	      
	      LocalDate data_candidaturalocal = Instant.ofEpochMilli(rs.getDate("data_candidatura").getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
	      p.setData_candidatura(data_candidaturalocal);
	      
	      LocalDate data_colloquiolocal = null;
	      
	      if(rs.getDate("data_colloquio") != null) {
	    	  data_colloquiolocal = Instant.ofEpochMilli(rs.getDate("data_colloquio").getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
	      }
	      
	      p.setData_colloquio(data_colloquiolocal);
	      
	      p.setResidenza(rs.getString("residenza"));
	      p.setTelefono(rs.getString("telefono"));
	      p.setEmail(rs.getString("email"));
	      p.setTitolo_studio(rs.getString("titolo_studio"));
	      p.setVoto(rs.getString("voto"));
	      p.setFormazione(rs.getString("formazione"));
	      p.setNote(rs.getString("note"));
	      p.setEsito(rs.getString("esito"));
	      p.setGreenpass(rs.getString("greenpass"));
	      p.setEta(Integer.parseInt(rs.getString("eta")));
	      p.setId(rs.getInt("id"));
	      
	      lista.add(p);
	    }
	    
	    return lista;
	  }


  
  
  
  
  
}


