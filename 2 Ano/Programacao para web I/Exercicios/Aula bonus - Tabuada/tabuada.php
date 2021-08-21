<?php
	
	$num = $_GET["num"];

	echo "Tabuada Maluka";
	echo "<br>";

	for ($i=0; $i<= 10; $i++) {
		$result = $num * $i;
		echo "$num x $i = $result";
		echo "<br>";
	}



?>