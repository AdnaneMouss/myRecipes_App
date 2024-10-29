<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="">
  <link rel="stylesheet" href=""https://unpkg.com/boxicons@latest/css/boxicons.min.css>
  <link href="https://cdn.jsdelivr.net/npm/remixion@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
<style type="text/css">
  *{
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
  list-style: none;
  text-decoration: none;
}

.centered-section{
  min-height: 100vh;
  background: linear-gradient(245.59deg, #4d9559 0%, #515151 28.53%, #515151 75.47%);
  position: relative;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  align-items: center;
  gap: 2rem;
    display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  flex-direction: column;

}

.centered-section {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  flex-direction: column; /* Added to align items vertically */
}

/* Style for h1 */
h1 {
  font-family: 'Poppins', sans-serif;
  font-weight: 700;
  font-size: 3rem;
  color: #4d9559;
  margin-bottom: 10px;
  text-align: center; /* Center the text */
}

/* Style for h2 */
h2 {
  font-family: 'Poppins', sans-serif;
  font-weight: 500;
  font-size: 1.8rem;
  color: #4d9559;
  margin-bottom: 20px;
  text-align: center; /* Center the text */
}
/* Style for button */
button {
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
  font-size: 1.2rem;
  color: white;
  color: black;
  background-color: #4d9559;
  border: none;
  border-radius: 6px;
  padding: 4px 24px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  text-decoration: none;
  display: inline-block;
  margin-top: 20px;
}

button:hover {
  background-color: #4d9559;
}
/* Style for the error container */
.error-container {
 /* Center the container */
}

/* Style for the error message */
.error-container h1 {
  color: #e74c3c; /* Red color for error message */
  font-size: 24px;
  margin-bottom: 10px;
}

/* Style for the error image */
.error-container img {
  max-width: 100%;
  height: auto;
  margin-bottom: 20px;
}

/* Style for the additional message */
.error-container h2 {
  color: white; /* Color for additional message */
  font-size: 18px;
  font-style: italic;
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
</style>
<body>
  <section class="centered-section">
<div class="error-container">
<h1>Votre commentaire a été ajouté avec succés</h1>
<div class="hero-img">
<img src="img/man.png">
  <h2>Nous vous remercions pour votre contribution à la réussite de l'applicaion.</h2>
  <button><a href="catalogueUser.jsp"><label style="color: white; font-size: 15px">retour à la page précédente</label></button>
</div>
</div>
</section>
 <script>
    window.onload = function() {
      const images = ['img/man.png'];
      const randomIndex = Math.floor(Math.random() * images.length);
      const foodImage = document.getElementById('foodImage');
      foodImage.src = images[randomIndex];
    };
  </script>
</body>
</html>

