<?php
	$a = 1;
	$b = -5;
	$c = 6;

	$delta = ($b*$b) - (4*$a*$c);
	$raiz = sqrt($delta);
	$x1 = (-$b + $raiz) / (2*$a);
	$x2 = (-$b - $raiz) / (2*$a);
	
	 if ($delta<0) {
	  	echo "Não existe raiz de numero negativo";
	  } 

	echo "A variavel A é: " . $a . "<br>";		
	echo "A variavel B é: " . $b . "<br>";
	echo "A variavel C é: " . $c . "<br>";
	echo "O valor de Delta é: " . $delta . "<br>";
	echo "<br>";

	echo  "O x1 é igual a: " . $x1 . "<br>";
	echo  "O x2 é igual a: " . $x2 . "<br>";




?>