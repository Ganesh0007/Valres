

<?php
	//require_once 'connexion.php';
					//$oPDO = new PDO(DSN,user_bdd,mdp_bdd);
					$connexion = mysqli_connect("localhost","root","root","ppe_m2l");

	require("requires/authentification.php");
	
	
	if(isset($_POST["enregistrer"])){  //test si appel avec le bouton enregistre
		$nom = $_POST["nom"];
		$description = $_POST["description"];
		$capacite = $_POST["capacite"];
		$admin = $_POST["admin"];
		//$sport = $_POST["sport"];
		$erreurs = array();
		
		if(empty($nom)){
		$erreurs[] = "Le nom est obligatoire.";
		}
		if(empty($description)){
		$erreurs[] = "La description est obligatoire.";
		}
		if(empty($capacite)){
		$erreurs[] = "La capacite est obligatoire.";
		}
		if($capacite>99){
			$erreurs[] = "La capacite maximale est de 99.";
		}
		

		
			
		
				if(count($erreurs) == 0){
					//ouvrir la connexion
					//define('BDD','localhost')
					
					//requete
					$requete = "INSERT INTO mrbs_room (room_name, description, capacity, room_admin_email ) values 
					('$nom', '$description', '$capacite', '$admin');";

					
					//execution de la requete
					mysqli_query($connexion, $requete);

					

					$message = "La salle ou le terrain est enregistré.";

				
				}
		}

?>


<?php include("include/entete.php"); ?>

<div class="container">
	<h1>Créer une salle</h1>
	
	<?php 
		if(isset($erreurs) && count($erreurs) > 0){
			echo('<div class="alert alert-danger" role="alert" style="color: #ff0000">');  // pour la couleur : style="color: #f5(rouge)27(vert)6a(bleu)"
				/*for(int $i = 0; $1 < count($erreurs); $i++){
					$item = erreurs[i];
				}*/
				foreach($erreurs as $item){							
					echo("$item <br />");
				}																	//les 2 for font la même chose, le foreach simplifie
			echo('</div>');
			
		}
	?>
	<form action="creer_salle.php" method="POST" class="form-horizontal"> <!-- balise <form> sert à inclure un formulaire (pour la method GET(255 carac) pour afficher les valeurs dans l'URL, POST(carac illimité) pour ne pas les afficher-->	
		<div class="form-group">
			<label class="col-sm-2" for="textNom">Nom</label>
			<div class="col-sm-10">
				<input type="text" id="textNom" name="nom" 	value="<?php if (!empty($nom)){echo($nom);} ?>" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2" for="textNom">Description</label>
			<div class="col-sm-10">
				<textarea name="description" cols="30" rows="5" type="text" id="description" name="description" value="<?php if (!empty($description)){echo($description);} ?>" class="form-control">Votre description</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2" for="capacite">Capacité</label>
			<div class="col-sm-10">
				<input type="number" id="capacite" name="capacite" value="<?php if (!empty($capacity)){echo($capacity);} ?>" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2" for="admin">Fournis par </label>
			<div class="col-sm-10">
			   
				<select class="col-sm-12" name="admin" id="admin">
		            <option value="1"><?php $requete = "SELECT room_admin_email  FROM  mrbs_room WHERE id='1' ";
						$resultat = mysqli_query($connexion, $requete);while ($donnees = mysqli_fetch_row($resultat)) { echo("$donnees[0]");}
						mysqli_free_result($resultat);  ?>
					</option>
		            <option value="2"><?php  $requete = "SELECT room_admin_email  FROM  mrbs_room WHERE id='2' ";
						$resultat = mysqli_query($connexion, $requete);while ($donnees = mysqli_fetch_row($resultat)) { echo("$donnees[0]");}
						mysqli_free_result($resultat); ?>
					</option> 
       			</select>		
			
				
			</div>
		</div>
		
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default" name="enregistrer">
				Enregistrer
				</button>
			</div>
		</div>
	</form>

	<?php



		if(isset($message)){echo("<div class='alert alert-success' role='success'>$message</div>");

		}

			//fermer la connexion
					mysqli_close($connexion);
	?>


</div>




<?php include("include/pied.php"); ?>