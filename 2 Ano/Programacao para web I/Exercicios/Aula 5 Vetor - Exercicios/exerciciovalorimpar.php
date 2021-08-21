<?php

$num = array(5,8,4,9,13,12,6,7);
$imp = 0;

foreach ($num as $qtde) {
if ($qtde % 2 == 1) {
	$imp++;
}
}

echo "Existem  $imp numeros impares!";

?>