<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="faq.css">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link href="https://unpkg.com/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
</head>
<style>*{
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
	padding: 2% 10%;
}

.hh{
	padding-bottom: 110px;
}
.hero-img {
    background-image: url('path/to/your/image.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    padding-bottom: 0px;
    height: 100vh; /* Set height to 100% of the viewport height */
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 5px;
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
/* Your CSS styling for the FAQ section */
.faq-section {
    max-width: 800px;
    margin: 5px;
    padding: 90px;
    background-color: transparent;
}

.question {
    font-weight: bold;
    cursor: pointer;
    position: relative;
    margin-bottom: 20px; /* Increased margin between questions */
    padding: 15px;
    background-color: #f1f1f1;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.question:hover {
    background-color: #e0e0e0;
}

.expand {
    position: absolute;
    right: 10px;
    font-size: 20px;
    transition: transform 0.3s ease;
}

.answer {
    display: none;
    padding: 15px;
    background-color: #eee;
    border-radius: 5px;
    margin-top: 10px;
    background-color: transparent; /* Increased margin between question and answer */
}

.question {
    color: #4d9559;
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
}</style>
<body>
  <header>
    <a href="#" class="logo">FAQ & Support</a>

    <ul class="navlist">
      <li><a href="acceuil.jsp">Acceuil</a></li>
      <li><a href="catalogue.jsp">Catalogue de recettes</a></li>
      <li><a href="faq.jsp">FAQ & Support</a></li>
      <li><a href="apropos.jsp">A propos de nous</a></li>
    </ul>

    <div class="bx bx-menu" id="menu-icon"></div>
  </header>
  <section class="hero">
        <div class="faq-section">
                  <div class="faq-item">
            <div class="question">Q: Est-ce je peux donner mon avis sur des recettes? <span class="expand">+</span></div>
            <div class="answer">A: Effectivement, vous le pouvez.</div>
        </div>
        <div class="faq-item">
            <div class="question">Q: Comment puis-je vous contacter? <span class="expand">+</span></div>
            <div class="answer">A: Vous trouverez ci-dessous nos coordonnées.</div>
        </div>
        <div class="faq-item">
            <div class="question">Q: Pourrais-je changer mes infos de compte? <span class="expand">+</span></div>
            <div class="answer">A: Oui, une fois connecté, vous pouvez changer vos informations. </div>
        </div>
        <!-- Add more questions and answers as needed -->
        <div class="faq-item">
            <div class="question">Q: Comment je crée un compte? <span class="expand">+</span></div>
            <div class="answer">A: This website provides...</div>
        </div>
    </div>
      <div class="faq-section">
                <div class="faq-item">
            <div class="question">Q: Comment puis-je ajouter ma propre recette?<span class="expand">+</span></div>
            <div class="answer">A: Vous pouvez ajouter une recette en naviguant vers la page 'Mes recettes'.</div>
        </div>
        <div class="faq-item">
            <div class="question">Q: Avez-vous un site web? <span class="expand">+</span></div>
            <div class="answer">A: To get started...</div>
        </div>
        <div class="faq-item">
            <div class="question">Q: Pourrais-je rejoindre votre équipe?<span class="expand">+</span></div>
            <div class="answer">A: Yes, you can change...</div>
        </div>
        <!-- Add more questions and answers as needed -->
        <div class="faq-item">
            <div class="question">Q: Existe-t-il un groupe sur facebook?<span class="expand">+</span></div>
            <div class="answer">A: To upload your recipe...</div>
        </div>
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
        // JavaScript for toggling answers
        const questions = document.querySelectorAll('.question');

        questions.forEach(question => {
            question.addEventListener('click', () => {
                const answer = question.nextElementSibling;
                if (answer.style.display === 'block') {
                    answer.style.display = 'none';
                    question.querySelector('.expand').innerText = '+';
                } else {
                    answer.style.display = 'block';
                    question.querySelector('.expand').innerText = '-';
                }
            });
        });
    </script>
</body>
</html>