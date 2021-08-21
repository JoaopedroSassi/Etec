<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>exercicio 4</title>
    </head>
    <body>
        <?php
        require_once 'produtos.php';

	   $produto1 = new produto;
	   $produto1->codigo = "001";
        $produto1->descricao = "creme para barbear";
        $produto1->cor = "branco";
        $produto1->qtde = "20";
        
      $produto2 = new produto;
	   $produto2->codigo = "002";
         $produto2->descricao = "chocolate amargo";
        $produto2->cor = "marrom";
         $produto2->qtde = "10";
        
        $produto1 ->mostrado();
        $produto2 ->mostrado();
        
        
        ?>
    </body>
</html>
