package model;

import java.time.LocalDate;

public class Candidatura {
	private int id;

	private String ambito;

	private String nome;

	private String cognome;

	private LocalDate anno_nascita;

	private int eta;

	private String residenza;

	private String telefono;

	private String email;

	private String titolo_studio;

	private String voto;

	private String formazione;

	private LocalDate data_candidatura;

	private LocalDate data_colloquio;

	private String note;

	private String esito;
	
	private String file;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return this.cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public LocalDate getAnno_nascita() {
		return this.anno_nascita;
	}

	public void setAnno_nascita(LocalDate anno_nascita) {
		this.anno_nascita = anno_nascita;
	}

	public int getEta() {
		return this.eta;
	}

	public void setEta(int eta) {
		this.eta = eta;
	}

	public String getResidenza() {
		return this.residenza;
	}

	public void setResidenza(String residenza) {
		this.residenza = residenza;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitolo_studio() {
		return this.titolo_studio;
	}

	public void setTitolo_studio(String titolo_studio) {
		this.titolo_studio = titolo_studio;
	}

	public String getVoto() {
		return this.voto;
	}

	public void setVoto(String voto) {
		this.voto = voto;
	}

	public String getFormazione() {
		return this.formazione;
	}

	public void setFormazione(String formazione) {
		this.formazione = formazione;
	}

	public LocalDate getData_candidatura() {
		return this.data_candidatura;
	}

	public void setData_candidatura(LocalDate data_candidatura) {
		this.data_candidatura = data_candidatura;
	}

	public LocalDate getData_colloquio() {
		return this.data_colloquio;
	}

	public void setData_colloquio(LocalDate data_colloquio) {
		this.data_colloquio = data_colloquio;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getEsito() {
		return this.esito;
	}

	public void setEsito(String esito) {
		this.esito = esito;
	}

	public String getAmbito() {
		return this.ambito;
	}

	public void setAmbito(String ambito) {
		this.ambito = ambito;
	}
	
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String toString() {
		return "Candidatura [id=" + this.id + ", nome=" + this.nome + ", cognome=" + this.cognome + ", anno_nascita="
				+ this.anno_nascita + ", eta=" + this.eta + ", residenza=" + this.residenza + ", telefono="
				+ this.telefono + ", email=" + this.email + ", titolo_studio=" + this.titolo_studio + ", voto="
				+ this.voto + ", formazione=" + this.formazione + ", data_candidatura=" + this.data_candidatura
				+ ", data_colloquio=" + this.data_colloquio + ", note=" + this.note + ", esito=" + this.esito
				+ ", ambito=" + this.ambito + "]";
	}

	public Candidatura(String ambito, String nome, String cognome, LocalDate anno_nascita, String residenza, String telefono,
			String email, String titolo_studio, String voto, String formazione, 
			String note, String esito) {
				
		this.ambito = ambito;
		this.nome = nome;
		this.cognome = cognome;
		this.anno_nascita = anno_nascita;
		this.residenza = residenza;
		this.telefono = telefono;
		this.email = email;
		this.titolo_studio = titolo_studio;
		this.voto = voto;
		this.formazione = formazione;
		this.note = note;
		this.esito = esito;
	}

	public Candidatura() {
		super();
	}

	
	
	
	
	
}
