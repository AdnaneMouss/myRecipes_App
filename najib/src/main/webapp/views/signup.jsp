<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="signup.css">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
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

section{
	padding: 0 5%;
	padding-top: 2%;
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
</head>
<body>
  <header>
    <a href="#" class="logo">myRECIPES</a>

    <ul class="navlist">
      <li><a href="acceuil.jsp">Acceuil</a></li>
      <li><a href="catalogue.jsp">Catalogue de recettes</a></li>
      <li><a href="faq.jsp">FAQ & Support</a></li>
      <li><a href="apropos.jsp">A propos de nous</a></li>
    </ul>

    <div class="bx bx-menu" id="menu-icon"></div>
  </header>
  <section class="hero">
        <div class="hero-text">
  <form method="post" class="signup-form" action="${pageContext.request.contextPath}/CreateAccountServlet">
    <h2>Entrez vos informations :</h2>
    <div class="input-group">
        <label for="firstname">Prénom</label>
        <input type="text" id="firstname" name="prenom" required>
    </div>
    <div class="input-group">
        <label for="lastname">Nom</label>
        <input type="text" id="lastname" name="nom" required>
    </div>
    <div class="input-group">
        <label for="username">Nom d'utilisateur</label>
        <input type="text" id="username" name="username" required>
    </div>
        <div class="input-group">
        <label for="email">Adresse e-mail</label>
        <input type="email" id="email" name="email" required>
    </div>
    <div class="input-group">
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password" required>
    </div>
    <button type="submit" style="font-weight: bold;">Créer un compte</button>
</form>

    </div>
    <div class="hero-img">
      <img src="img/food.png">
    </div>
  </section>
 <script>
    window.onload = function() {
      const images = ['img/food.png'];
      const randomIndex = Math.floor(Math.random() * images.length);
      const foodImage = document.getElementById('foodImage');
      foodImage.src = images[randomIndex];
    };
  </script>
</body>
</html>

    </div>
    <div class="hero-img">
      <img src="img/food.png">
    </div>
  </section>
 <script>
    window.onload = function() {
      const images = ['img/food.png'];
      const randomIndex = Math.floor(Math.random() * images.length);
      const foodImage = document.getElementById('foodImage');
      foodImage.src = images[randomIndex];
    };
  </script>
</body>
</html>