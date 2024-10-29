<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ma.ac.uir.modele.Favoris" %>
<%@page import="java.util.LinkedList"%>
<%@ page import="java.util.Base64" %>
   <%
    HttpSession s= request.getSession();
    String username = (String) s.getAttribute("username");
%>
<%
   Favoris c = new Favoris();
   if(request.getAttribute("favoris")!=null){
       c=(Favoris)request.getAttribute("favoris");
   }
%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <!-- Inclure la bibliothèque Boxicons -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="catalogue.css">
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link href="https://unpkg.com/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
</head>
<style>
*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
	list-style: none;
	text-decoration: none;
}

header{
	position: fixed;
	right: 0;
	top: 0;
	z-index: 1000;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 33px 9%;
	background: transparent;
}
.comment-form {
  display: flex;
  align-items: center;
  justify-content: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
  z-index: 999; /* Set a high z-index to bring it to the foreground */
}

.modal-content {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.close-comment-modal {
  position: absolute;
  top: 10px;
  right: 10px;
  cursor: pointer;
  color: #fff;
}

.logo{
	font-size: 30px;
	font-weight: 700;
	color: white;
}
  .navlist{
    display: flex;
  }
  .navlist a {
    color: white;
      margin-left: 60px;
      font-size: 15px;
      font-weight: 600;
      border-bottom: 2px;
      transition: all .55s ease;
  }
  
  .navlist a:hover{
    border-bottom: 2px solid white;
  }
  

#menu-icon{
	color: white;
	font-size: 35px;
	z-index: 10001;
	cursor: pointer;
	display: none;
}
.recette{
	height: 100%;
	width: 100%;
	min-height: 100vh;
	background: linear-gradient(245.59deg, #4d9559 0%, #515151 28.53%, #515151 75.47%);
}

.container{
	display: grid;
	grid-template-columns: repeat(auto-fit , minmax(360px, auto));
	align-items: center;
	gap: 2rem;
	text-align: center;
	cursor: pointer;
	padding-top: 2rem;
}

.box {
  max-width: 300px;
  background: linear-gradient(135deg, #4d9559, #515151);
  box-shadow: 5px 30px 56.1276x rgb(55 55 55 / 12%);
  border-radius: 10px;
  position: relative;
  height: 300px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.box img {
  max-width: 100%;
  max-height: 100%;
  transition: transform 0.3s ease;
}

    .box img {
      animation: pulse 4s infinite;
    }

    @keyframes pulse {
      0% {
        transform: scale(1);
      }
      50% {
        transform: scale(1.05);
      }
      100% {
        transform: scale(1);
      }
    }



.box h4 {
  position: absolute;
  bottom: 5px; /* Adjust this value to set the distance from the bottom */
  left: 0;
  right: 0;
  text-align: center;
  margin: 0;
  font-size: 16px;
  color: #333;
}

.box:hover{
transform: translateY(-5px);
}

section{
	padding: 1px 11%;
	padding-top: 130px;
}

.box .cart i{
	position: absolute;
	top: 0;
	left: 0;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    height: 10%;
}
.box:hover::before {
  content: "Cliquez pour plus d'informations"; /* Message to display */
  position: absolute;
  top: -20px; /* Adjust the distance from the box */
  left: 50%; /* Adjust horizontal positioning */
  transform: translateX(-50%); /* Center the message */
  padding: 5px;
  background: white;
  color: #4d9559;
  border-radius: 5px;
  z-index: 1;
  white-space: nowrap; /* Prevent line breaks */
}

#sort[value="all"] ~ .container .box {
  display: block;
}

#sort[value="breakfast"] ~ .container .box[data-meal="breakfast"],
#sort[value="lunch"] ~ .container .box[data-meal="lunch"],
#sort[value="dinner"] ~ .container .box[data-meal="dinner"] {
  display: block;
}

#sort {
  padding: 1px;
  width: 200px;
  font-size: 16px;
  border-radius: 5px;
}

.sort-container {
  margin-bottom: 20px;
}
.bx.bxs-comment {
  color: white;
  position: absolute;
  bottom: 10px;
  right: 10px;
  cursor: pointer;
  font-size: 24px; /* Adjust the font size as needed */
  transition: color 0.3s ease; /* Smooth color transition on hover */
margin-bottom: 585px;
margin-right: 225px;
  /* Add any additional styles you need */
}
.bouton {
position: relative;
bottom:722px;
left:470px;
  background-color: #3498db; /* Button color */
  color: #ffffff; /* Text color */
  padding: 10px 20px; /* Adjust padding as needed */
  font-size: 16px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
 /* Set a high z-index to bring it to the foreground */
}


.modal-content {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}
.modal {
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
}

/* Modal Content */
.modal-content {
background: linear-gradient(40deg, #000000, #333333);

  margin: 15% auto;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3); /* Shadow effect */
  width: 70%;
  max-width: 700px; 
  display: flex;
  flex-direction: column;
  align-items: center;/* Reduced maximum width */
}
        .disconnect-button {
            display: none;
            cursor: pointer;
            color: #007bff; /* Adjust the color as needed */
        }
/* Close Button */
.close {
  color: #444;
  float: right;
  font-size: 24px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #222;
  text-decoration: none;
  cursor: pointer;
}

/* Modal Header */
.modal-header {
  padding-bottom: 10px;
  border-bottom: 1px solid #ccc;
}

/* Modal Title */
.modal-title {
  margin: 0;
  font-size: 20px;
}

/* Modal Body */
.modal-body {
  padding: 15px 0;
}

/* Modal Footer */
.modal-footer {
  padding-top: 10px;
  border-top: 1px solid #ccc;
  text-align: right;
}
.bx.bxs-trash {
  color: white;
  position: absolute;
  bottom: 10px;
  right: 10px;
  cursor: pointer;
  font-size: 24px; /* Adjust the font size as needed */
  transition: color 0.3s ease; /* Smooth color transition on hover */
margin-top: 109px;
margin-right: 225px;
  /* Add any additional styles you need */
}

/* Modal Body */
.modal-body {
  text-align: center;
}
.username-label {
  position: absolute;
  top: 10px;
  left: 10px;
  color: white;
  font-weight: bold;
}
/* Image within Modal */
.modal-img {
  max-width: 100%;
  height: auto;
  margin-bottom: 15px;
}
.profile-section {
    display: flex;
    align-items: center;
}

.profile-section label {
    margin-left: 5px; /* Adjust the margin as needed */
}

/* Assuming FontAwesome is used for icons */
.profile-section i {
    margin-left: 10px; /* Adjust the margin as needed */
}
#modalIngredients,#modalDifficulty,#modalPreparationTime{
	color: white;
}

#title,#modalTitle{
	color: #5da369 ;
}
</style>
<body>
  <header>
    <a href="#" class="logo">Mes favoris</a>
<ul class="navlist">
      <li><a href="http://localhost:8080/najib/views/interfaceUser.jsp">Acceuil</a></li>
      <li><a href="http://localhost:8080/najib/views/catalogueUser.jsp">Recettes</a></li>
      <li><a href="http://localhost:8080/najib/views/myRecipes.jsp">Mes recettes</a></li>
      <li><a href="http://localhost:8080/najib/views/favoris.jsp">Mes favoris</a></li>
      <li><a href="http://localhost:8080/najib/views/profile.jsp">Mon profil</a></li>
    <li class="profile-section">
        <a href="#"><i class="fas fa-user"></i></a>
        <label for="userName"><%= username %></label>
    <a href="#" onclick="logOut()"><i class="fas fa-sign-out-alt"></i></a>
    </li>
</ul>

    <div class="bx bx-menu" id="menu-icon"></div>
  </header>
  <section class="recette">
    <div class="sort-container">
      <label for="sort" style="color: white;">Trier par type de repas :</label>
      <select id="sort">
        <option value="all">Tous</option>
        <option value="Petit-déjeuner">Petit-dejeuner</option>
        <option value="DéjeunerDîner">Dejeuner/Diner</option>
        <option value="Fraiches">Boissons fraiches</option>
        <option value="Chaudes">Boissons chaudes</option>
        <option value="Desserts">Desserts</option>
      </select>
    </div>
   
    
    <i class='bx bxs-trash recipe-icon bx-md delete-icon' style="color: white; position: absolute; top: 10px; right: 10px; cursor: pointer;" onclick="openCommentModal()" title="Supprimer"></i>
<div class="comment-form" style="display: none;" id="commentForm">
  <div class="modal-content" id="commentFormContainer">
  
    <span class="close-comment-modal" onclick="closeFavorisModal()">&times;</span>
    <form action="${pageContext.request.contextPath}/removeFav" method="post">
    <table>
    <tr>
      <td><label for="userName"style="color: white;">Nom d'utilisateur:</label></td>
      <td><input type="text" name="userName"  value="<%= username %>" readonly></td></tr>
      <tr>
            <tr><td><label for="recipeOwner"style="color: white;">L'auteur de la recette:</label></td>
      <td><input type="text" name="recipeOwner" required></input>
</td></tr><tr>
      <td><label for="title" style="color: white;">Titre de la recette:</label></td>
      <td><input type="text" name="title" required></td></tr>
<tr>
<td></td>
<td>
      <input type="submit" value="Supprimer des favoris"></td></tr>
      </table>
    </form>
  </div>
</div>
    
    <form id="recipeForm" method="post" action="${pageContext.request.contextPath}/getFav">
     <div class="container">
  <div class="box" data-meal="Fraiches">
    <img src="data:image/png;base64," name="imageURL">
    <div class="icon-container">
    <input type="text" name="username" value="<%=username %>" style="display: none;">
    <i class='bx bxs-heart recipe-icon bx-md favorite-icon' style="color: white; position: absolute; top: 10px; right: 10px;"></i>
    <label for="recipeOwner" class="username-label"><%=c.getUserNameRecipeOwner() %></label>
    <h4><%=c.getTitle()%></h4>
    <span class="ingredients" style="display: none;"></span>
    <span class="preparation-time" style="display: none;"></span>
    <span class="difficulty" style="display: none;"></span>
  </div>
  </div>
        </div>
        <button type="submit" class="bouton">Recharger les recettes</button>
    </form>

    <div class="modal" id="myModal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <img id="modalImage" src="">
        <h4 id="modalTitle"></h4>
        <p><strong id="title">Ingrédients:</strong> <span id="modalIngredients"></span></p>
        <p><strong id="title">Description:</strong> <span id="modalPreparationTime"></span></p>
        <p><strong id="title">Catégorie:</strong> <span id="modalDifficulty"></span></p>
      </div>
    </div>
  </section>

<script>
// Get the modal and its content elements
const modal = document.getElementById('myModal');
const modalImage = document.getElementById('modalImage');
const modalTitle = document.getElementById('modalTitle');
const modalIngredients = document.getElementById('modalIngredients');
const modalPreparationTime = document.getElementById('modalPreparationTime');
const modalDifficulty = document.getElementById('modalDifficulty');

const boxes = document.querySelectorAll('.box');

boxes.forEach(box => {
  box.addEventListener('click', function() {
    modalImage.src = this.querySelector('img').src;
    modalTitle.textContent = this.querySelector('h4').textContent;

    const ingredients = this.querySelector('.ingredients').textContent;
    const preparationTime = this.querySelector('.preparation-time').textContent;
    const difficulty = this.querySelector('.difficulty').textContent;
    modalIngredients.textContent = ingredients;
    modalPreparationTime.textContent = preparationTime;
    modalDifficulty.textContent = difficulty;

    modal.style.display = 'block';
  });
});

// Close the modal when the 'x' button is clicked
document.querySelector('.close').addEventListener('click', function() {
  modal.style.display = 'none';
});

// Close the modal when clicking outside of it
window.addEventListener('click', function(event) {
  if (event.target === modal) {
    modal.style.display = 'none';
  }
});

</script>



  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const dropdown = document.getElementById('sort');
      const boxes = document.querySelectorAll('.box');

      dropdown.addEventListener('change', function() {
        const selectedValue = dropdown.value;

        boxes.forEach(box => {
          const mealType = box.getAttribute('data-meal');

          if (selectedValue === mealType) {
            box.style.display = 'block';
          } else {
            box.style.display = 'none';
          }
        });
      });
    });
  </script>

  <script>
    function logOut() {
        // Display a confirmation dialog
        var confirmLogout = confirm("Are you sure you want to log out?");

        // If the user clicks "OK" in the confirmation dialog
        if (confirmLogout) {
            // Implement your logoff logic here
            // For example, redirect the user to another page
            window.location.href = "http://localhost:8080/najib/views/acceuil.jsp";
        } else {
        }
    }
</script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const favoriteIcons = document.querySelectorAll('.favorite-icon');

    favoriteIcons.forEach(icon => {
      // Set the initial color to yellow
      icon.style.color = 'yellow';

      icon.addEventListener('click', function() {
        // Vérifie la couleur actuelle
        const currentColor = icon.style.color || getComputedStyle(icon).color;

        // Change la couleur en rouge si elle est actuellement blanche, sinon en blanc
        icon.style.color = currentColor === 'yellow' ? 'white' : 'yellow';
      });
    });
  });
</script>

  <script>
      function logOff() {
        // Implement your logoff logic here
        // For example, redirect the user to a logoff page or perform an AJAX call to log off the user
        alert("User logged off!"); // Replace this with your actual logoff logic
    }
</script>
<script>
function openCommentModal() {
    var modal = document.getElementById("commentForm");
    modal.style.display = "block";
  }
  function closeCommentModal() {
    // Get the modal element
    var modal = document.getElementById("commentForm");

    // Hide the modal
    modal.style.display = "none";
  }
</script>
<script>
    function showSuccessAlert() {
        alert("Your comment has been added successfully!");
        return true; // Allow the form submission to proceed
    }
</script>
<script>
function openCommentModal() {
    var modal = document.getElementById("commentForm");
    modal.style.display = "block";
  }
  function closeCommentModal() {
    // Get the modal element
    var modal = document.getElementById("commentForm");

    // Hide the modal
    modal.style.display = "none";
  }
//Close the modal when the 'x' button is clicked
  document.querySelector('.close').addEventListener('click', function() {
    modal.style.display = 'none';
  });
</script>
</body>
</html>
