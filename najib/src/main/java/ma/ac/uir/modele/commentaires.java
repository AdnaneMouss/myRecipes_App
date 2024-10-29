package ma.ac.uir.modele;

public class commentaires {
	private int id;
	private String text;
	private String recette;
	private String username;
	
	public commentaires(int id, String username, String recette, String text ) {
		super();
		this.id = id;
		this.text = text;
		this.recette = recette;
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getRecette() {
		return recette;
	}
	public void setRecette(String recette) {
		this.recette = recette;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "commentaires [id=" + id + ", text=" + text + ", recette=" + recette + ", username=" + username + "]";
	}
	
	


	
}
