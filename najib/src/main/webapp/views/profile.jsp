<%@page import="ma.ac.uir.modele.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
user resultat = new user();
if(request.getAttribute("util")!=null)
	resultat=(user)request.getAttribute("util");
	%>
	   <%
    HttpSession s= request.getSession();
    String username = (String) s.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
.logo{
	font-size: 30px;
	font-weight: 700;
	color: white;
}
#menu-icon{
	color: white;
	font-size: 35px;
	z-index: 10001;
	cursor: pointer;
	display: none;
}
.hero{
	height: 100%;
	width: 100%;
	min-height: 100vh;
	background: linear-gradient(245.59deg, #4d9559 0%, #515151 28.53%, #515151 75.47%);
	position: relative;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	align-items: center;
	gap: 2rem;
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
section{
	padding: 0 4%;
}

.hero-img{
	background-image: url('path/to/your/image.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
    .hero-img img {
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

.merged-img {
  position: all;
  bottom: 60;
  left: 0;
}
.hero-text h1{
	font-family: 'Permanent Marker', cursive;
	font-size: 40px;
	line-height: 1;
	color: white;
	margin: 0 0 45px;
	    text-transform: uppercase;
}
.hero-text p{
	font-family: 'Rubik Doodle Shadow';
	font-size: 15px;
	line-height: 1;
	color: white;
	margin: 0 0 45px;
	line-height: 1.5;
}
.hero-text a{
	display: inline-block;
	color: white;
	border: 1px solid transparent;
	padding: 12px 30px;
	line-height: 1.4;
	font-size: 14px;
	font-weight: 500;
	border-radius: 30px;
    text-transform: uppercase;
    transition: all .55s ease;
    letter-spacing: 2px;
}

.hero-text{
	display: inline-black;
	color: white;
	border: 1px solid transparent;
    padding: 20px;
    line-height: 1.4;
    font-size: 14px
    font-weight: 500;
    border-radius: 30px;
    transition: all .55s ease;
}

.hero-text a:hover{
	background: transparent;
	border: 1px solid white;
	transform: translateX(8p);
}

.signup-form {
  padding: 10px;
  border-radius: 8px;
  margin-right: 50px;
}

.signup-form h2 {
  text-align: left;
  margin-bottom: 10px;
  color: #4d9559;
}

.input-group {
  margin-bottom:10px;
}

label {
  display: block;
  margin-bottom: 10px;
  color: white;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: calc(100% - 22px);
  padding: 12px;
  border-radius: 6px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
  border-color: #4d9559;
}

button[type="submit"] {
  width: 96%;
  padding: 12px;
  margin-top: 10px;
  border: none;
  border-radius: 6px;
  background-color: #4d9559;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
  background-color: #2980b9;
}
  </style>
<body>
  
  <header>
    <a href="#" class="logo">Mon profil</a>
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
  <section class="hero">
<div class="hero-text">
  <h2 style="padding-bottom:40px; color: #4d9559">Changez vos informations ci-dessous: </h2>
  <!-- Form for editing information (initially hidden) -->
  <form id="signup-form" action="${pageContext.request.contextPath}/UpdateProfile" method="post">
  <input type="text" name="username" value="<%= username %>" style="display: none;">
    <label for="new-name">Nouveau Prenom:</label>
    <input type="text" name="firstName" id="new-name" placeholder="Saisissez un nouveau prénom">
    <br>
     <label for="new-name">Nouveau Nom:</label>
    <input type="text" name="secondName" id="new-name" placeholder="Saisissez un nouveau nom">
    <br>
    <label for="new-email">Nouvelle adresse e-mail::</label>
    <input type="email" name="email" id="new-email" placeholder="Saisissez une nouvelle adresse e-mail">
    <br>
     <label for="new-password">Nouveau mot de passe:</label>
    <input type="password" name="password" id="new-password" placeholder="Saisissez un nouveau mot de passe">
    <br>
   <button type="submit">Confirmer</button>
</form>
</div>
    <div class="hero-img">
      <img src="img/edit.png">
    </div>
  </section>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const editBtn = document.getElementById("edit-btn");
    const editForm = document.getElementById("edit-form");
    const nameSpan = document.getElementById("name");
    const usernameSpan = document.getElementById("username");

    editBtn.addEventListener("click", function () {
      // Toggle the visibility of the form
      editForm.style.display = editForm.style.display === "none" ? "block" : "none";
      // If the form is visible, hide the name and username spans
      if (editForm.style.display === "block") {
        nameSpan.style.display = "none";
        usernameSpan.style.display = "none";
      } else {
        // If the form is hidden, show the name and username spans
        nameSpan.style.display = "inline";
        usernameSpan.style.display = "inline";
      }
    });

    // You may want to add event listeners or additional logic here
    editForm.addEventListener("submit", function (e) {
      // Your existing form submission logic
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
</body>
</html>