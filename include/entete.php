<?php 
 
  if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
  if(isset($_SESSION['utilisateur'])){
    $utilisateur = $_SESSION['utilisateur'];
  }
  
?>

<!DOCTYPE html>
<html>


	<head>
	<meta charset="utf-8">
	<meta name="author"content="xxxx" />
	<meta http equiv="Content Language" content="fr">
	<meta name="viewport" content="width=device width, initial scale=1.0, maximum scale=1.0, user scalable=no">
	<title>Maison des ligues </title>
	<link rel="stylesheet" href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>	
  <link rel="stylesheet" href="jquery/jquery-ui.css"/>
  <link rel="stylesheet" href="jquery/jquery-ui.js"/>
  <script src="external/jquery/jquery.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>


  
		
 
	</head>
	<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <header class="navbar-header">

        <a class="navbar-brand" href="index.php">Maison des ligues</a>

           <a class="navbar-brand" > <form action="" method="get" id="Form1">
              <p>Date: <input type="text" id="datepicker" autocomplete="off"></p>
                
              <script>

                 $("#datepicker").datepicker({inline: true});
  
             </script>
             
</form></a>

       
        


        
    </header>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Les salles <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/ppe_m2l/creer_salle.php">Créer une salle </a></li>
            <li><a href="/ppe_m2l/afficher_salle.php">Liste des salles</a></li>
            <!--<li><a href="/bts1/creer_eleve.php">Réserver une salle</a></li>
            <li><a href="/bts1/rechercher_eleve.php">Rechercher un élève</a></li>-->
          </ul>
        </li>
      </ul>

      <div class="nav navbar navbar-right">
        <?php 
          if(isset($utilisateur)){ ?>
            Bonjour <?php echo($utilisateur)?>
            <a href="logout.php">Se deconnecter </a>
         <?php }else{ ?>
              <a href="login.php">Se connecter</a>
        <?php  } ?>
      </div>
    </div><!-- /.navbar-collapse -->

  </div> <!--/.container-fluid-->
</nav> 
</body>