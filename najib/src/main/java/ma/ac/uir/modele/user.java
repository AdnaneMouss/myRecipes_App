package ma.ac.uir.modele;

public class user {
	private int id;
    private String prenom;
    private String nom;
	private String Username;
    private String email;
    private String Password;


	public user(int id, String prenom, String nom, String username, String email, String password) {
		super();
		this.id = id;
		this.prenom = prenom;
		this.nom = nom;
		this.Username = username;
		this.email = email;
		this.Password = password;
	}

	public user() {
		super();
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "user [id=" + id + ", prenom=" + prenom + ", nom=" + nom + ", Username=" + Username + ", email=" + email
				+ ", Password=" + Password + "]";
	}
	
    
	
	
	
}
