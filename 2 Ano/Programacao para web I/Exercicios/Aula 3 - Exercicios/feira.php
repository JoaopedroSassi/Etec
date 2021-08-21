<?php

$frutas = array('Lichia', 'Banana', 'Maçã', 'Abacaxi', 'Fruta do Conde' );

echo $frutas[0];
echo "<br>";
echo "Esse vetor tem: " . count($frutas) . " posições"; 



$aaa = array ("Pneu" => 100, "oleo" => 10, "Luva" => 4 );
$aaa ["Capo"] = 300;
echo "<br>";
echo $aaa ["oleo"];
echo "<br>";
echo $aaa ["Capo"];

echo "<br>";
$a = 15;
$b = 15 ;
	if ($a > $b) {
		echo "A é maior que B";
	}else if ($a < $b) {
		echo "A é menor que B";
	} else{
		echo "A é igual a B";
	}


echo "<br>";
$c = 10;
$d = 10.00;
	if ($c == $d) {
		echo "Verdadeiro";
	}else {
		echo "Falso"; 
	}

echo "<br>";
$e = "Abc";
$f = "abc";
	if ($e === $f) {
		echo "Verdadeiro";
	}else {
		echo "Falso"; 
	}

?>