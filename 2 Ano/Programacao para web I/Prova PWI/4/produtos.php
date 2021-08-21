<?php

class produto{
		public $codigo;
		public $descricao;
		public $cor;
		public $qtde;
	}
        
        function mostrado(){
        echo "codigo: ". $this->codigo;
        echo "<br>";
        echo "descricao: ".$this->descricao;
        echo "<br>";          
        echo "cor: ".$this->cor;
        echo "<br>";
        echo "qtde: ".$this->qtde;
        }

