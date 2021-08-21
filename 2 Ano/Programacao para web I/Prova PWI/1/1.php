<?php

$num = array(5, 7, 3, 80, 1, 2, 15, 8, 45, 10);
$media = 0;
$par = 0;
$qtde = count($num);
$soma = 0;
$impar = 0;

foreach ($num as $valor) {
	$soma += $valor;
}
$media = $soma / $qtde;

foreach ($num as $valor) {
	if ($valor % 2 <> 1) {
		$par += 1;
	}
}



echo "A média é: $media" ;
echo "<br>";
echo "O Maior valor é:" .max($num) ;
echo "<br>";
echo "Este vetor tem: $par ";


?>
