<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
		<?php 
			ini_set('display_errors', 1); error_reporting('e_all'); 
			include("include/entete.php");
			
		 ?>


		<?php 
			if(isset($_GET["resultat"]) && $_GET["resultat"] == "DEL"){?>
				<div class="alert alert-success" role="alert">
				La salle est supprimé.
				</div>

		<?php
			}
		?>

	
	</head>
	<body>
		<h2>liste des salles</h2>
		<form action="afficher_salle.php" method="POST" class="form-horizontal"> <!-- balise <form> sert à inclure un formulaire (pour la method GET(255 carac) pour afficher les valeurs dans l'URL, POST(carac illimité) pour ne pas les afficher-->	
				<div class="form-group">
					<label class="col-sm-2" for="sport">Rechercher une salle </label>
					<div class="col-sm-2">
						<input type="text" id="room" name="room"  class="form-control" />
					</div>
					<div class=" col-sm-2">
						<button type="submit" class="btn btn-default" name="rechercher">
						Rechercher
						</button>
					</div>
				
				</div>
		</form>
		<table class="table table-striped">
		                <tr>
		                	<th>Nom</th>
		                    <th >Lieu</th>
		                    <th>Description</th>
		                    <th>Capacité</th>
		                    <th>Fourni par</th>
		                    <th>Reserver la salle</th>
		                </tr>

		<?php
					require_once 'requires/infos_login.php';	

					//ouvrir la connexion
					$connexion = connexion();

					if(isset($_POST["rechercher"])){  //test si appel avec le bouton rechercher
						$room = $_POST["room"];
									

						//requete
						$requete = "SELECT id, room_name, sort_key, description, capacity, room_admin_email FROM mrbs_room WHERE room_name 
						LIKE '%$room%'";

						$resultat = mysqli_query($connexion, $requete);

						while ($donnees = mysqli_fetch_row($resultat)) { 
							
							echo("<tr><td>$donnees[1]</td><td>$donnees[2]</td><td>$donnees[3]</td><td>$donnees[4]</td><td>$donnees[5]</td>");
							echo("<td><a href='/ppe_m2l/day.php'><i class='glyphicon glyphicon-calendar'></i></a></td>");
							echo("<td><a href='/ppe_m2l/supprimer_salle.php?id=$donnees[0]' onclick='button_remove_click(event)'>
								<i class='glyphicon glyphicon-remove' ></i></a></td>");
							echo("</tr>");
						}
					}
					else{
						//requete
						$requete = "SELECT id, room_name, sort_key, description, capacity, room_admin_email FROM mrbs_room";

						//execution de la requete
						$resultat = mysqli_query($connexion, $requete);
							
						while ($donnees = mysqli_fetch_row($resultat)) { 
							
							echo("<tr><td>$donnees[1]</td><td>$donnees[2]</td><td>$donnees[3]</td><td>$donnees[4]</td><td>$donnees[5]</td>");
							echo("<td><a href='/ppe_m2l/day.php'><i class='glyphicon glyphicon-calendar'></i></a></td>");
							echo("<td><a href='/ppe_m2l/supprimer_salle.php?id=$donnees[0]' onclick='button_remove_click(event)'>
								<i class='glyphicon glyphicon-remove' ></i></a></td>");
							echo("</tr>");
									
						}
						mysqli_free_result($resultat);
					}
					mysqli_close($connexion);		
		?>


		</table>

		<script type="text/javascript">
			function button_remove_click(e){

				if(confirm("Supprimer cette classe ?")){

					return true;

				}
				else{
					e.preventDefault();
					return false;
				}

			}
			

		</script>


	</body>
	<?php include("include/pied.php"); ?>

</html>