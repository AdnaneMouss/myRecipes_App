package ma.ac.uir.DAO;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxCrud.Update;

import ma.ac.uir.modele.*;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDAO implements IUserDAO {

	@Override
	public boolean creerCompte(user u) {
		 boolean res=false;
		    String req="INSERT INTO users(FirstName, SecondName, Username, Email, Password)" + "VALUES(?,?,?,?,?)";
		    Connection cnx=singleton.getConnection();
		    try{
		        PreparedStatement ps= (PreparedStatement) cnx.prepareStatement(req);
		        ps.setString(1, u.getPrenom());
		        ps.setString(2, u.getNom());
		        ps.setString(3, u.getUsername());
		        ps.setString(4, u.getEmail());
		        ps.setString(5, u.getPassword());
		        
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
	public boolean authentification(String login, String password){
	    boolean res=false;
	    String req="SELECT * FROM users WHERE Username like ? AND Password like ?";
	    Connection cnx=null;
			try {
				 cnx=singleton.getConnection();
				 PreparedStatement pstm = (PreparedStatement) cnx.prepareStatement(req);
	                        pstm.setString(1, login);
	                        pstm.setString(2, password);
				ResultSet rs = pstm.executeQuery();
				if (rs.next())
	                            res = true;
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return res;
	}

	@Override
	public boolean ajouterCommentaire(commentaires comment) {
	    boolean res = false;
	    String req = "INSERT INTO comments(UserName, RecipeTitle, Comment) VALUES(?,?,?)";
	    Connection cnx = singleton.getConnection();

	    try {
	        try (PreparedStatement ps = cnx.prepareStatement(req)) {
	            ps.setString(1, comment.getUsername());
	            ps.setString(2, comment.getRecette());
	            ps.setString(3, comment.getText());

	            int r = ps.executeUpdate();
	            if (r == 1) {
	                res = true;
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return res;
	}
	
	@Override
	public boolean ajouterRating(Rating rat) {
	    boolean res = false;
	    String req = "INSERT INTO ratings(UserName, RecipeTitle, Rating) VALUES(?,?,?)";
	    Connection cnx = singleton.getConnection();

	    try {
	        try (PreparedStatement ps = cnx.prepareStatement(req)) {
	            ps.setString(1, rat.getUsername());
	            ps.setString(2, rat.getRecette());
	            ps.setInt(3, rat.getRat());

	            int r = ps.executeUpdate();
	            if (r == 1) {
	                res = true;
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return res;
	}

	public user getUserById(String username) {
	    user u = null;
	    String req = "SELECT * FROM users WHERE Username = ?";
	    Connection cnx = singleton.getConnection();
	        try {
	        	PreparedStatement ps = cnx.prepareStatement(req);
	            ps.setString(1, username);
	            ResultSet resultSet = ps.executeQuery();
	            if (resultSet.next()) {
	            	int Id = resultSet.getInt("UserID");
                   String first = resultSet.getString("FirstName");
                		   String second = resultSet.getString("SecondName");
                						   String email = resultSet.getString("Email");
                								   String password = resultSet.getString("Password");
	                u = new user(Id,first,second,username,email,password);
	      	      System.out.println("User:"+u);
	            }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return u;
	}
	
	public boolean UpdateProfile(user updatedUser) {
        boolean success = false;
        String query = "UPDATE users SET FirstName=?, SecondName=?, Email=?, Password=? WHERE Username=?";
        Connection connection = singleton.getConnection();

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            
            preparedStatement.setString(1, updatedUser.getPrenom());
            preparedStatement.setString(2, updatedUser.getNom());
            preparedStatement.setString(3, updatedUser.getEmail());
            preparedStatement.setString(4, updatedUser.getPassword());
            preparedStatement.setString(5, updatedUser.getUsername());

            int rowsAffected = preparedStatement.executeUpdate();
            success = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return success;
    }
	@Override
	public LinkedList<user> getAllUsers() {
		Connection cnx= singleton.getConnection();
	    LinkedList<user> list = new LinkedList<>();
	    user u = null;
	    String query = "SELECT * FROM users";
	    try {
	         PreparedStatement statement = cnx.prepareStatement(query);
	         ResultSet resultSet = statement.executeQuery();
	        
	        while (resultSet.next()) {
            	int Id = resultSet.getInt("UserID");
                String first = resultSet.getString("FirstName");
             		   String second = resultSet.getString("SecondName");
             		   String username = resultSet.getString("Username");
             						   String email = resultSet.getString("Email");
             								   String password = resultSet.getString("Password");
	                u = new user(Id,first,second,username,email,password);
	 
	            list.add(u);
	            System.out.println(""+list);
	        }
	    }catch(SQLException e){
	    	e.printStackTrace();
	    }
	    
	    return list;
	}
	
	public boolean ajouterRecette(recette nouvelleRecette) {
	    boolean success = false;
	    String query = "INSERT INTO recipes (Username, Title, Description, Ingredients, ImageURL, Category) VALUES (?, ?, ?, ?, ?, ?)";
	    Connection connection = singleton.getConnection();

	    try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        preparedStatement.setString(1, nouvelleRecette.getUsername());
	        preparedStatement.setString(2, nouvelleRecette.getTitle());
	        preparedStatement.setString(3, nouvelleRecette.getDescription());
	        preparedStatement.setString(4, nouvelleRecette.getIngredients());
	        preparedStatement.setBytes(5, nouvelleRecette.getImageURL());
	        preparedStatement.setString(6, nouvelleRecette.getCategory());

	        
	        int rowsAffected = preparedStatement.executeUpdate();
	        success = rowsAffected > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return success;
	}
	@Override
	public List<String> getDistinctUserNames() {
        List<String> userNames = new ArrayList<>();
        String query = "SELECT DISTINCT UserName FROM users";

        try (Connection connection = singleton.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                String userName = resultSet.getString("UserName");
                userNames.add(userName);
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }

        return userNames;
    }


}
	
