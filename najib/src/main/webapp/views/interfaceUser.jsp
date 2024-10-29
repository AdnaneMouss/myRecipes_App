<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    // Retrieve the username from the session
    HttpSession s = request.getSession();
    String username = (String) s.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="interface.css">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
.hero-text h1 {
  font-family: 'Pacifico', cursive;
  font-size: 30px;
  line-height: 1;
  color: white;
  margin: 0 0 45px;
  text-transform: uppercase;
  background-image: url('');
}

.hero-text p{
	font-family: 'Rubik Doodle Shadow';
	font-size: 15px;
	color: white;
	margin: 0 0 35px;
	line-height: 1.5;
	margin-left: 5px;
	margin-right: 10px;
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
.hero-text {
  max-width: 800px;
  margin: 0 auto;
  text-align: center;
  padding: 40px;
}

h1 {
  font-size: 2.5em;
  margin-bottom: 20px;
}

h2 {
  font-size: 1.5em;
  margin-top: 30px;
  margin-right: 20px;
}

/* Highlighted text */
.highlight {
  color:#4d9559 ;
  font-weight: bold;
}

.hero-text a:hover{
	background: transparent;
	border: 1px solid white;
	transform: translateX(8p);
}</style>
</head>
<body>
  <header>
    <a href="#" class="logo">ACCEUIL</a>

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
  <h1>Bienvenue à vous, <span class="highlight"><%= username%>!</span>, dans l'univers des saveurs de <span class="highlight">RECETTES MAISON</span></h1>
  <p>
    Sur <span class="highlight">myRecipes</span>, chaque plat raconte une histoire, chaque recette est une aventure gustative. Nous sommes ravis de vous accueillir dans notre monde de délices culinaires, où chaque saveur éveille les sens et chaque plat est une expérience à part entière. Explorez, créez et partagez des moments gastronomiques mémorables avec notre collection variée de recettes. Que vous soyez un chef passionné ou un novice en quête d'inspiration, vous trouverez ici des trésors culinaires pour tous les repas et toutes les occasions.
  </p>
  <h2>Et n'oubliez pas! Pour un corps sain, mangez <span class="highlight">3 fruits et légumes</span> par jour!</h2>
</div>

    <div class="hero-img">
      <img src="img/eating.png">
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