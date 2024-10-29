<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
   <% String errorMessage = (String)request.getAttribute("error");%>
<!DOCTYPE html>
<html>
<head>
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

.login-form {
  padding: 10px;
  border-radius: 8px;
  margin-right: 80px;
}

.login-form h2 {
  text-align: left;
  margin-bottom: 10px;
  color: #4d9559;
  margin-bottom:60px; 
}


.input-group {
  margin-bottom: 20px;
}

label {
  display: block;
  margin-bottom: 25px;
  color: white;
}

input[type="text"],
input[type="password"] {
  width: calc(100% - 22px);
  padding: 12px;
  border-radius: 6px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
}

button[type="submit"] {
  width: 95%;
  padding: 12px;
  border: none;
  border-radius: 6px;
  background-color: #4d9559;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
  background-color: #2980b9;
}</style>
  <title></title>
  <link rel="stylesheet" type="text/css" href="login.css">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">

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
 <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
 <h2 style="color: #4d9559; padding-bottom: 20px;">Connectez-vous à votre compte</h2>
        <label for="username">Nom d'utilisateur:</label>
        <input type="text" id="username" name="Username" required><br><br>
        
        <label for="password">Mot de passe:</label>
        <input type="password" id="password" name="Password" required><br><br>
        
        <button type="submit" style="font-weight: bold;">Login</button>
    </form>

</div>
    <div class="hero-img">
      <img src="img/food.png">
    </div>
  </section>
      <script>
        // Function to handle displaying the alert dialog
        window.onload = function() {
            // Check if the URL contains the error query parameter
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('error')) {
                // Create a div for the alert dialog
                const alertDiv = document.createElement('div');
                alertDiv.textContent = "WRONG INFORMATION!";
                alertDiv.style.backgroundColor = 'red';
                alertDiv.style.color = 'white';
                alertDiv.style.padding = '10px';
                alertDiv.style.position = 'fixed';
                alertDiv.style.top = '50%';
                alertDiv.style.left = '50%';
                alertDiv.style.transform = 'translate(-50%, -50%)';
                alertDiv.style.zIndex = '1000';
                alertDiv.style.borderRadius = '5px';
                alertDiv.style.boxShadow = '0 4px 6px rgba(0, 0, 0, 0.1)';
                alertDiv.style.fontFamily = 'Arial, sans-serif';

                document.body.appendChild(alertDiv);

                // Automatically remove the alert after a certain time (e.g., 3 seconds)
                setTimeout(function() {
                    alertDiv.remove();
                }, 3000);
            }
        };
    </script>
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