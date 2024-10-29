package ma.ac.uir.modele;

public class Favoris {
	private int id;
    private String userName;
    private String userNameRecipeOwner;
    private String title;
    private String description;
    private String ingredients;
    
    private byte[] imageURL;
    private String category;


    public Favoris(int id,String userName, String userNameRecipeOwner, String title, String description,
                   String ingredients, byte[] imageURL, String category) {
    	this.id=id;
        this.userName = userName;
        this.userNameRecipeOwner = userNameRecipeOwner;
        this.title = title;
        this.description = description;
        this.ingredients = ingredients;
        this.imageURL = imageURL;
        this.category = category;
    }
public Favoris() {
	
}
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserNameRecipeOwner() {
        return userNameRecipeOwner;
    }

    public void setUserNameRecipeOwner(String userNameRecipeOwner) {
        this.userNameRecipeOwner = userNameRecipeOwner;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

   

    public byte[] getImageURL() {
        return imageURL;
    }

    public void setImageURL(byte[] imageURL) {
        this.imageURL = imageURL;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Favoris [id="+id+", userName=" + userName + ", userNameRecipeOwner=" + userNameRecipeOwner + ", title=" + title
                + ", description=" + description + ", ingredients=" + ingredients +   ", imageURL="
                + imageURL + ", category=" + category + "]";
    }
}
