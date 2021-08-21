<?php

	$produtos = array("Pneu", "oleo", "Luvas" );

		$qtde = count($produtos);

		for ($i=0;$i < $qtde ;$i++){
		echo $produtos[$i]. "<br>";
		}

		foreach ($produtos as $valor) {
			echo $valor. "<br>";
		}




?>