<?php
error_reporting(E_ALL ^ E_NOTICE);
require_once("mostra-alerta.php"); ?>


<html>
<head>
    <title>Minha loja</title>
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/loja.css" rel="stylesheet" />
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a href="index.php" class="navbar-brand">Minha Loja</a>
            </div>

               
            </div>
        </div><!-- container acaba aqui -->
    </div>

    <div class="container">
    	    <div class="principal">
            <?php  mostraAlerta("success"); ?>
            <?php mostraAlerta("danger"); ?>


    <!-- fim cabecalho.php -->

      