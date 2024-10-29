package ma.ac.uir.modele;

public class Rating {
	private int id;
	private int rat;
	private String recette;
	private String username;
	
	public Rating(int id, String username, String recette, int rat) {
		super();
		this.id = id;
		this.rat = rat;
		this.recette = recette;
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRat() {
		return rat;
	}
	public void setRat(int rat) {
		this.rat = rat;
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
		return "commentaires [id=" + id + ", rating=" + rat + ", recette=" + recette + ", username=" + username + "]";
	}
	
	


	
}
