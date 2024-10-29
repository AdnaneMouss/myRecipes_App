package ma.ac.uir.DAO;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import ma.ac.uir.modele.*;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class RecetteDAO implements IRecetteDAO{
	@Override
	public boolean ajouterRecette(recette rc) {
		 boolean res=false;
		    String req="INSERT INTO recipes(UserName, Title, Description, Ingredients, ImageURL, Category)" + "VALUES(?,?,?,?,?,?)";
		    Connection cnx=singleton.getConnection();
		    try{
		        PreparedStatement ps= (PreparedStatement) cnx.prepareStatement(req);
		        ps.setString(1, rc.getUsername());
		        ps.setString(2, rc.getTitle());
		        ps.setString(3, rc.getDescription());
		        ps.setString(4, rc.getIngredients());
		        ps.setBytes(5, rc.getImageURL());
		        ps.setString(6, rc.getCategory());
		        
		        int r = ps.executeUpdate();
		        if(r==1) 
		            res=true;
		    }
		    catch(SQLException e){
		        e.printStackTrace();
		    }
		       return res; 
	}

	@Override
	public boolean modifierRecette(recette rc) {
		Connection cnx= singleton.getConnection();
		String req="UPDATE recipes SET UserName = ? , Title = ?, Description = ?, Ingredients = ?, ImageUrl = ?, Category = ? WHERE RecipeId = ?";
		boolean res =false;
		try {
		PreparedStatement ps=(PreparedStatement)cnx.prepareStatement(req);
        ps.setString(1, rc.getUsername());
        ps.setString(2, rc.getTitle());
        ps.setString(3, rc.getDescription());
        ps.setString(4, rc.getIngredients());
        ps.setBytes(5, rc.getImageURL());
        ps.setString(6, rc.getCategory());
        ps.setInt(7, rc.getRecipeID());
		int r = ps.executeUpdate();
		if(r==1){	
			res=true;
		}
		}
		 catch(SQLException e){
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public boolean supprimerRecette(String username, String title) {
		Connection cnx= singleton.getConnection();
		String req="DELETE FROM recipes WHERE UserName=? AND Title=?";
		boolean res=false;
		try {
		PreparedStatement ps=(PreparedStatement)cnx.prepareStatement(req);
		ps.setString(1, username);    
		ps.setString(2, title);    
		int r = ps.executeUpdate();
        if(r==1) {
	    res=true;
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return res;
	}
	
	
@Override
public LinkedList<recette> getAllRecipes() {
	Connection cnx= singleton.getConnection();
    LinkedList<recette> recipeList = new LinkedList<>();
    
    String query = "SELECT * FROM recipes";
    try {
         PreparedStatement statement = cnx.prepareStatement(query);
         ResultSet resultSet = statement.executeQuery();
        
        while (resultSet.next()) {
            int recipeID = resultSet.getInt("RecipeID");
            String userName = resultSet.getString("UserName");
            String title = resultSet.getString("Title");
            String description = resultSet.getString("Description");
            String ingredients = resultSet.getString("Ingredients");
            byte[] imageURL = resultSet.getBytes("ImageURL");
            String category = resultSet.getString("Category");
            
           
            recette recipe = new recette(recipeID, userName, title, description, ingredients, imageURL, category);
            recipeList.add(recipe);
        }
    }catch(SQLException e){
    	e.printStackTrace();
    }
    
    return recipeList;
}
@Override
public LinkedList<recette> getRecipesByCategory(String category) {
    LinkedList<recette> recipes = new LinkedList<>();

    Connection cnx= singleton.getConnection();
        String query = "SELECT * FROM recipes WHERE category = ?";
        try (PreparedStatement statement = cnx.prepareStatement(query)) {
            statement.setString(1, category);
            ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int recipeID = resultSet.getInt(1);
                    String userName = resultSet.getString(2);
                    String title = resultSet.getString(3);
                    String description = resultSet.getString(4);
                    String ingredients = resultSet.getString(5);
                    byte[] imageURL = resultSet.getBytes(6);

                    recette recipe = new recette(recipeID, userName, title, description, ingredients, imageURL, category);
                    recipes.add(recipe);
                }
   
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return recipes;
}
@Override
public boolean addFavorite(
Favoris f
    ) {
	Connection cnx= singleton.getConnection();
	boolean res=false;
           
            String sql = "INSERT INTO favorites (UserName, UserNameRecipeOwner, Title, Description, Ingredients, ImageURL, Category) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try {
            
            PreparedStatement statement = singleton.getConnection().prepareStatement(sql);

          
            statement.setString(1, f.getUserName());
            statement.setString(2, f.getUserNameRecipeOwner());
            statement.setString(3, f.getTitle());
            statement.setString(4, f.getDescription());
            statement.setString(5, f.getIngredients());
            statement.setBytes(6, f.getImageURL());
            statement.setString(7, f.getCategory());
            
           
            int rowsInserted = statement.executeUpdate();
            
           
            if (rowsInserted > 0) {
                System.out.println("A new favorite was added successfully!");
                 res=true;
            }
        } catch (SQLException e) {
            System.err.println("Error while adding a favorite: " + e.getMessage());
        }
        return res;
    }

@Override
public boolean removeFavorite(Favoris f) {
    Connection cnx = singleton.getConnection();
    boolean res = false;
    
    
    String sql = "DELETE FROM favorites WHERE " +
            "userName = ? AND " +
            "userNameRecipeOwner = ? AND " +
            "title = ?"; 
    
    try {
       
        PreparedStatement statement = cnx.prepareStatement(sql);

       
        statement.setString(1, f.getUserName());
        statement.setString(2, f.getUserNameRecipeOwner());
        statement.setString(3, f.getTitle());

       
        int rowsDeleted = statement.executeUpdate();

        
        if (rowsDeleted > 0) {
            System.out.println("Favorite removed successfully!");
            res = true;
        }
    } catch (SQLException e) {
        System.err.println("Error while removing favorite: " + e.getMessage());
    }
    return res;
}
/*public List<Favoris> getFavorites() throws SQLException {
    List<Favoris> favorisList = new ArrayList<>();
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
        connection = singleton.getConnection();

        
        String query = "SELECT * FROM favoris";
        preparedStatement = connection.prepareStatement(query);
        resultSet = preparedStatement.executeQuery();

        while (resultSet.next()) {
           
            int id = resultSet.getInt("id");
            String userName = resultSet.getString("userName");
            String userNameRecipeOwner = resultSet.getString("userNameRecipeOwner");
            String title = resultSet.getString("title");
            String description = resultSet.getString("description");
            String ingredients = resultSet.getString("ingredients");
            String imageURL = resultSet.getString("imageURL");
            String category = resultSet.getString("category");

            Favoris favoris = new Favoris(id, userName, userNameRecipeOwner, title, description, ingredients, imageURL, category);
            favorisList.add(favoris);
        }
    } finally {
        
        if (resultSet != null) {
            resultSet.close();
        }
        if (preparedStatement != null) {
            preparedStatement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }

    return favorisList;
}*/
public recette getRecette(String cat) {
	recette recipe = null;
    String req = "SELECT * FROM recipes WHERE Category =?";
    Connection cnx = singleton.getConnection();
    try {
    	PreparedStatement ps = cnx.prepareStatement(req);
    	ps.setString(1, cat);
        ResultSet resultSet = ps.executeQuery();
        if (resultSet.next()) {
            int recipeID = resultSet.getInt("RecipeID");
            String userName = resultSet.getString("UserName");
            String title = resultSet.getString("Title");
            String description = resultSet.getString("Description");
            String ingredients = resultSet.getString("Ingredients");
            byte[] imageURL = resultSet.getBytes("ImageURL");
            String category = resultSet.getString("Category");
            
            
             recipe = new recette(recipeID, userName, title, description, ingredients, imageURL, category);
             System.out.println(""+recipe);
        }
} catch (SQLException e) {
    e.printStackTrace();
}
	return recipe;
}
@Override
public Favoris getUserById(String username) {
    Favoris favoris = null;
    String req = "SELECT UserNameRecipeOwner, Title FROM favorites WHERE UserName = ?";
    Connection cnx = singleton.getConnection();
        try {
        	PreparedStatement ps = cnx.prepareStatement(req);
        	ps.setString(1, username);
            ResultSet resultSet = ps.executeQuery();
            if(resultSet.next()) {
            	int id = resultSet.getInt(1);
            String userNameRecipeOwner = resultSet.getString(2);
            String title = resultSet.getString(3);
            String description = resultSet.getString(4);
            String ingredients = resultSet.getString(5);
            byte[] imageURL = resultSet.getBytes(6);
            String category = resultSet.getString(7);

          favoris = new Favoris(id, username, userNameRecipeOwner, title, description, ingredients, imageURL, category);
            }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return favoris;
}

@Override
public recette getRecetteByUser(String username) {
    recette r = null;
    String req = "SELECT* FROM recipes WHERE UserName = ?";
    Connection cnx = singleton.getConnection();
        try {
        	PreparedStatement statement= cnx.prepareStatement(req);
        	 statement.setString(1, username);
             ResultSet resultSet = statement.executeQuery();
                 while (resultSet.next()) {
                     int recipeID = resultSet.getInt(1);
                     String userName = resultSet.getString(2);
                     String title = resultSet.getString(3);
                     String description = resultSet.getString(4);
                     String ingredients = resultSet.getString(5);
                     byte[] imageURL = resultSet.getBytes(6);
                     	String category = resultSet.getString(7);

                     r = new recette(recipeID, userName, title, description, ingredients, imageURL, category);
                     System.out.println(""+r);
            }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return  r ;
}

}
