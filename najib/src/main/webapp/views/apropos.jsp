<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="apropos.css">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
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
    font-size: 18px;
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
	padding: 0 10% 14% 10%;
}

.hh{
	padding-top: 120px;
}
.hero-img{
	background-image: url('path/to/your/image.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  padding-top: 200px;
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


.contact-info p {
  margin-bottom: 10px;
  color: white;
}

.contact-info a {
  margin-bottom: 10px;
  color: white; /* Espacement entre les paragraphes */
}

/* Styles pour les icônes */
.contact-info i {
  margin-right: 10px; /* Espacement à droite des icônes */
  font-size: 20px; /* Taille des icônes */
}
.bx {
  color: #4d9559; /* Replace 'red' with the color you want */
}

.contact-info {
  display: flex;
  flex-direction: row;
  align-items: center;
   position: absolute;
  bottom: 20px; /* Ajustez cette valeur selon l'espacement désiré */
  left: 22%;
  transform: translateX(-50%);
  background-color: transparent; /* Couleur de fond de la section */
  padding: 20px; /* Espacement intérieur *//* Coins arrondis */
  width: 80%; /* Largeur de la section */
  max-width: 400px;
  padding-top: 270px;
}

.contact-links {
  display: flex;
  flex-direction: row;
  gap: 80px; 
 /* Adjust the spacing between links */
}

.contact-links p {
  margin: 0;
}

.contact-links a {
  text-decoration: none;
  color: white; /* Adjust the color as needed */
}

.hero2{
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












</style>
<body>
  <header>
    <a href="#" class="logo">A propos</a>

    <ul class="navlist">
      <li><a href="acceuil.jsp">Acceuil</a></li>
      <li><a href="catalogue.jsp">Catalogue de recettes</a></li>
      <li><a href="faq.jsp">FAQ & Support</a></li>
      <li><a href="apropos.jsp">A propos de nous</a></li>
    </ul>

    <div class="bx bx-menu" id="menu-icon"></div>
  </header>
  <section class="hero">
    <div class="hh">
      <h1 style="color: #4d9559;">À Propos de Nous</h1>
      <p style="color: white;">Bienvenue sur myRecipes ! Nous sommes une équipe passionnée par la création et le partage de recettes délicieuses pour tous les niveaux de compétence culinaire. Notre objectif est de vous inspirer à explorer de nouvelles saveurs et à apprécier chaque moment passé en cuisine.</p>
      <p style="color: white;">Nous croyons fermement que la cuisine est bien plus qu'une simple préparation de repas ; c'est une expérience sensorielle qui apporte joie et créativité dans la vie quotidienne.</p><br><br>
      <h1 style="color: #4d9559;">Notre Mission</h1>
        <p style="color: white;">Chez myRecipes, notre mission est de rendre la cuisine accessible à tous. Nous souhaitons encourager l'exploration culinaire, offrir des ressources pour tous les niveaux de compétence et promouvoir une approche ludique et créative de la cuisine.</p>
        <p style="color: white;">Nous visons à créer une communauté où chacun peut partager, apprendre et se connecter à travers une passion commune pour la nourriture et la cuisine.</p>
    </div>
    <div class="hero-img">
      <img src="img/us.png">
    </div>
  </section>
  <div class="contact-info">
    <div class="contact-links">
  <p><a href="tel:+21265384266"><i class="bx bxs-phone"></i>+212653842666</a></p>
  <p><a href="mailto:myrecipes@hotmail.com"><i class="bx bxs-envelope"></i>myrecipes@hotmail.com</a></p>
  <p><a href="https://twitter.com/myrecipes"><i class="bx bxl-twitter"></i>@myrecipes</a></p>
  <p><a href="https://facebook.com/myrecipes"><i class="bx bxl-facebook"></i>/myrecipes</a></p>
  <p><a href="https://instagram.com/myrecipes"><i class="bx bxl-instagram"></i>@myrecipes</a></p>
  <!-- Add other contact information or icons as needed -->
</div>
</div>
 <script>
    window.onload = function() {
      const images = ['img/us.png'];
      const randomIndex = Math.floor(Math.random() * images.length);
      const foodImage = document.getElementById('foodImage');
      foodImage.src = images[randomIndex];
    };
  </script>
</body>
</html>