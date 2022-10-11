<?php
    $pdo = new PDO("mysql:dbname=dbteste;host=localhost","root","");//para conexão com banco de dados
    

    /* uma outra alternativa para a linha de cima
    $dbname = 'dbteste';
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $pdo = new PDO("mysql:dbname = $dbname;host = $dbhost",$dbuser,$dbpass);
     */
?>