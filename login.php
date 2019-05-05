<?php
    if(isset($_POST['connexion'])){
        $mail = $_POST['mail'];
        $password = $_POST['password'];
        $erreurs = array();

        $connexion = mysqli_connect("localhost","root","","ppe_m2l");
        //Pour la requete preparee 
        /*$requete_login = $connexion->prepare("SELECT mail_admin, password_admin FROM administrateur WHERE mail_admin=:mail AND password_admin=:password");
        
        $requete_login->execute(array(':mail_admin'=>$_GET['mail'],':password_admin'=>$_GET['password']));
        $res = $requete_login->get_result();
        $row = $res->fetch_assoc();
        printf("mail = %s (%s)\n ", $row['mail_admin'], gettype($row['mail_admin']));
        $resultat = mysqli_query($connexion, $requete_login);
        $donnees = mysqli_fetch_row($resultat);
        
        
          print_r($requete_login);
        
        if ($mail != $donnees[0] ) {
          $erreurs[] = "  L'adresse Email ne correspond pas.";
        }
        if ($password != $donnees[1]) {
          $erreurs[] = "   Le mot de passe ne correspond pas.";
        }*/

        if($mail == "yohanndu77@hotmail.fr" && 
            $password == "yl123"){
                session_start();
                $_SESSION['utilisateur'] = $mail;
                header("location:  index.php");
            }
          
          mysqli_free_result($resultat);
            
        mysqli_close($connexion);
    }
?>

<?php
    include('include/entete.php');
?>

<form class="form-horizontal" method="POST" action="#">
  <div class="form-group">
    <?php 
    if(isset($erreurs) && count($erreurs) > 0){
      echo('<div class="alert alert-danger" role="alert" style="color: #ff0000">');  // pour la couleur : style="color: #f5(rouge)27(vert)6a(bleu)"
        
        foreach($erreurs as $item){             
          echo("$item <br />");
        }                                
      echo('</div>');
      
    }
  ?>
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" name="mail" class="form-control" id="inputEmail3" placeholder="Email" value="<?php if (!empty($mail)){echo($mail);} ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Mot de passe</label>
    <div class="col-sm-10">
      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password" value="<?php if (!empty($password)){echo($password);} ?>">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name="connexion" class="btn btn-default">Connexion</button>
    </div>
  </div>
</form>


<?php
    include('include/pied.php');
?>
