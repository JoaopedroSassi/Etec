<?php
	session_start();

	if (!isset($_SESSION['usuario']) && !isset($_SESSION['senha'])) {
		header('location: index.html');
	}


echo "ESSA É UMA PAGINA RESTRITA";
?>
<form action="logout.php">
	<input type="submit" value="SAIR">
</form>