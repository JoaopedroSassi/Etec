<?php

 	include 'conexao.php';

 	$consulta = "SELECT * FROM cadastro";

 	foreach ($conexao -> query($consulta) as $linha) {
 		echo "RM: {$linha['rm']} <br>";
 		echo "NOME: {$linha['nome']} <br>";
 		echo "IDADE: {$linha['idade']} <br>";
 	}
                
?>