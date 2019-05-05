<?php 
// appel GET avec id
require("requires/authentification.php");
if(isset($_GET["id"])){
	$id = $_GET["id"];
	//print_r($id);

	$requete = "DELETE FROM mrbs_room WHERE id = $id";
	
	$connexion = mysqli_connect("localhost","root","root","ppe_m2l");
	mysqli_query($connexion,$requete);
	mysqli_close($connexion);
	header("Location: afficher_salle.php?resultat=DEL");


}
	
?>
