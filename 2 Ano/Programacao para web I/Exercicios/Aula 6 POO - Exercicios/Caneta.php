<?php

class Caneta {
    public $cor;
    public $ponta;
    public $fabricaentre;
    public $carga;
    public $tampada;
    
    function tampar(){
        $this->tampada = true;
    }
    
    function destampar(){
        $this->tampada = false;
    }
    
    function rabiscar() {
        if ($this->tampada == false){
            echo "<h1><font color='green'>*EU ME RABISCO*</font> </h1>";
        } else {
            echo "<h1><font color='red'>*NAO ME RABISCAR EU ME MATAR* </font> </h1>";
        }
    }
    function status() {
        echo $this->cor . "<br>";
        echo $this->ponta . "<br>";
        echo $this->fabricante . "<br>";
        echo $this->carga . "<br>";
        echo $this->tampada . "<br>";
        
    }
    
    
}
