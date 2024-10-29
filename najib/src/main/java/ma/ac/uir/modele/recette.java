package ma.ac.uir.modele;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import java.io.File;

public class recette {
    private int recipeID;
    private String Username;
    private String title;
    private String description;
    private String ingredients;
    private byte[] imageURL;
    private String category;

    public recette(int recipeID, String UserName, String title, String description, String ingredients, byte[] imageURL2, String category) {
    	super();
        this.recipeID = recipeID;
        this.Username = UserName;
        this.title = title;
        this.description = description;
        this.ingredients = ingredients;
        this.imageURL = imageURL2;
        this.category = category;
    }
public recette() {
	super();
}
	
	
	public int getRecipeID() {
		return recipeID;
	}

	public void setRecipeID(int recipeID) {
		this.recipeID = recipeID;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
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
		return "recette [recipeID=" + recipeID + ", Username=" + Username + ", title=" + title + ", description="
				+ description + ", ingredients=" + ingredients + ", imageURL=" + imageURL
				+ ", category=" + category + "]";
	}





}
