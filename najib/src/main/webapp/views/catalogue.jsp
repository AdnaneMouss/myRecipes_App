<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="catalogue.css">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
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
  max-width: 400px; 
  display: flex;
  flex-direction: column;
  align-items: center;/* Reduced maximum width */
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


/* Modal Body */
.modal-body {
  text-align: center;
}

/* Image within Modal */
.modal-img {
  max-width: 100%;
  height: auto;
  margin-bottom: 15px;
}

#modalIngredients,#modalDifficulty,#modalPreparationTime{
	color: white;
}

#title,#modalTitle{
	color: #5da369 ;
}
</style>
</head>
<body>
  <header>
    <a href="#" class="logo">Catalogue</a>
    <ul class="navlist">
      <li><a href="acceuil.jsp">Acceuil</a></li>
      <li><a href="catalogue.jsp">Catalogue de recettes</a></li>
      <li><a href="faq.jsp">FAQ & Support</a></li>
      <li><a href="apropos.jsp">A propos de nous</a></li>
    </ul>
    <div class="bx bx-menu" id="menu-icon"></div>
  </header>
<!------------------------------------------------>
<!------------------------------------------------>
<!------------------------------------------------>

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
    <div class="container">
<div class="container">
    <div class="box">
    <img src="img/pasta.png">
    <h4>Spaghetti bolognaise</h4>
    <!-- Éléments masqués -->
    <span class="ingredients" style="display: none;">Pâtes, Sauce tomate, Viande hachée, Oignon, Ail</span>
    <span class="preparation-time" style="display: none;">45 minutes</span>
    <span class="difficulty" style="display: none;">Moyen</span>
  </div>
  <div class="box" data-meal="DéjeunerDîner">
    <img src="img/shrimps.png">
    <h4>Crevettes à la planche</h4>
    <span class="ingredients" style="display: none;">Crevettes, Huile d'olive, Ail, Citron, Sel</span>
    <span class="preparation-time" style="display: none;">20 minutes</span>
    <span class="difficulty" style="display: none;">Facile</span>
  </div>
   <div class="box" data-meal="DéjeunerDîner">
    <img src="img/potato.png">
    <h4>Potato Wedges</h4>
    <span class="ingredients" style="display: none;">Pommes de terre, Huile, Sel, Poivre</span>
    <span class="preparation-time" style="display: none;">30 minutes</span>
    <span class="difficulty" style="display: none;">Moyen</span>
  </div>

  <div class="box" data-meal="Petit-déjeuner">
    <img src="img/crepe.png">
    <h4>Pancakes</h4>
    <span class="ingredients" style="display: none;">Farine, Oeufs, Lait, Levure chimique, Sucre</span>
    <span class="preparation-time" style="display: none;">20 minutes</span>
    <span class="difficulty" style="display: none;">Facile</span>
  </div>
 <div class="box" data-meal="DéjeunerDîner">
    <img src="img/calamari.png">
    <h4>Calamar frit</h4>
    <span class="ingredients" style="display: none;">Calmar, Farine, Œuf, Huile</span>
    <span class="preparation-time" style="display: none;">35 minutes</span>
    <span class="difficulty" style="display: none;">Moyen</span>
  </div>

  <div class="box" data-meal="Fraiches">
    <img src="img/milkshake.png">
    <h4>Milkshake au chocolat</h4>
    <span class="ingredients" style="display: none;">Chocolat, Lait, Glace à la vanille</span>
    <span class="preparation-time" style="display: none;">10 minutes</span>
    <span class="difficulty" style="display: none;">Facile</span>
  </div>
    <div class="box" data-meal="DéjeunerDîner">
    <img src="img/paela.png">
    <h4>Paella</h4>
    <span class="ingredients" style="display: none;">Riz, Poulet, Poivrons, Petits pois, Tomates, Safran</span>
    <span class="preparation-time" style="display: none;">45 minutes</span>
    <span class="difficulty" style="display: none;">Moyen</span>
  </div>
 <div class="box" data-meal="Petit-déjeuner">
    <img src="img/croissant.png">
    <h4>French croissant</h4>
    <span class="ingredients" style="display: none;">Farine, Beurre, Levure, Sucre, Sel, Œuf</span>
    <span class="preparation-time" style="display: none;">40 minutes</span>
    <span class="difficulty" style="display: none;">Moyen</span>
  </div>

  <div class="box" data-meal="Desserts">
    <img src="img/oreo.png">
    <h4>Oreo Cake</h4>
    <span class="ingredients" style="display: none;">Biscuits Oreo, Beurre, Fromage frais, Sucre, Crème</span>
    <span class="preparation-time" style="display: none;">60 minutes</span>
    <span class="difficulty" style="display: none;">Difficile</span>
  </div>

  <div class="box" data-meal="Desserts">
    <img src="img/donuts.png">
    <h4>Donuts</h4>
    <span class="ingredients" style="display: none;">Farine, Levure, Œuf, Lait, Sucre, Beurre</span>
    <span class="preparation-time" style="display: none;">45 minutes</span>
    <span class="difficulty" style="display: none;">Moyen</span>
  </div>

  <div class="box" data-meal="Desserts">
    <img src="img/churros.png">
    <h4>Churros</h4>
    <span class="ingredients" style="display: none;">Farine, Eau, Sel, Huile</span>
    <span class="preparation-time" style="display: none;">30 minutes</span>
    <span class="difficulty" style="display: none;">Facile</span>
  </div>

  <div class="box" data-meal="Fraiches">
    <img src="img/oreomilkshake.png">
    <h4>Oreo Milkshake</h4>
    <span class="ingredients" style="display: none;">Biscuits Oreo, Glace à la vanille, Lait</span>
    <span class="preparation-time" style="display: none;">10 minutes</span>
    <span class="difficulty" style="display: none;">Facile</span>
  </div>
    </div>
<div class="modal" id="myModal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <img id="modalImage" src="">
    <h4 id="modalTitle"></h4>
    <p><strong id="title">Ingrédients:</strong> <span id="modalIngredients"></span></p>
    <p><strong id="title">Temps de préparation:</strong> <span id="modalPreparationTime"></span></p>
    <p><strong id="title">Difficulté:</strong> <span id="modalDifficulty"></span></p>
  </div>
</div>
</div>
  </section>

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


</body>
</html>>