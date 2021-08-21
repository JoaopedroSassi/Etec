<?php

	include 'conexao.php';

	$nome = 'casual gamers';
	$idade = 17;

	$consulta = $conexao->prepare("INSERT INTO cadastro (nome,idade) VALUES ('$nome', '$idade')");


	$consulta -> execute();


?>