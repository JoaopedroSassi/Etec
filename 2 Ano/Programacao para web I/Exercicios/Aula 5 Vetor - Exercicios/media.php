<?php

$notas = array(5,8,7);

$qtde = count($notas);
$media = 0;
$soma = 0;

foreach ($notas as $valor) {
	$soma += $valor;
	}


$media = $soma / $qtde;

echo "A média é: $media";	

?>