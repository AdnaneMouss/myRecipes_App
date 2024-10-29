<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="error.css">
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
  color: black;
  background-color: white;
  border: none;
  border-radius: 6px;
  padding: 12px 24px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  text-decoration: none;
  display: inline-block;
  margin-top: 20px;
}

button:hover {
  background-color: #4d9559;
}

</style>
<body>
  <section class="centered-section">
<div>
<h1>ERREUR 403. Accés refusé!</h1>
<img src="img/error.png">
  <h2 style="color: white">OUPS, IL SEMBLE QUE VOS INFORMATIONS SONT INCORRECTES.</h2>
  <button><a href="login.jsp"><label style="color: #4d9559">Retour à la page de connexion!</label></button>
</div>
  </section>
</body>
</html>