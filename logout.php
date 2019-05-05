<?php
	if(isset($_POST['deconnexion'])){
			session_start();
			session_destroy();
			header("location: index.php");

		
	}
?>


<?php include("include/entete.php"); ?>

<form class="form-horizontal" method="POST" action="#">
	<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" name="deconnexion" class="btn btn-default" >
				Deconnexion
				</button>
			</div>
	</div>
</form>



<?php include("include/pied.php"); ?>