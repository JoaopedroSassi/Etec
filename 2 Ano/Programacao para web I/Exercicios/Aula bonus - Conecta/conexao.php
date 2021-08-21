<?php

 	$host = "localhost";
 	$usuario = "root";
 	$senha = "";
 	$banco = "etec";

 	$conexao = new MySQLi("$host", "$usuario", "$senha", "$banco");

 	if ($conexao->connect_error) {
 		echo "Noooossa, e o casual gamers n te ensinou?";
 	}
 	else{
 		 echo "Casual gamers te ensinou hein";
 	 }


?>