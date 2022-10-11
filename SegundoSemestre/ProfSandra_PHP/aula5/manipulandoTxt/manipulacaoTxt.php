<?php

    $texto = file_get_contents('nomes.txt');//captura o conteudo do arquivo nomes.txt
    echo $texto; 

    $texto .= "<br>\n Fulano de tal";//adiciona um nome em uma nova linha na variavel que pegou o conteudo de nomes.txt

    file_put_contents('nomes.txt', $texto);//sobrescreve o conteudo com o novo

    file_put_contents('novosNomes.txt', $texto);// cria um novo arquivo e salva tudo nele

    //unlink('nomes.txt'); //elimina o primeiro arquivo
    
    //rename('novosNomes.txt', 'nomesAtualizados.txt'); //renomeia o arquivo
    
    rename('novosNomes.txt','./copia/novosNomes.txt');//move o arquivo para outra pasta

    copy('./nomes.txt','./copia/backupNomes.txt');//salva uma copia do arquivo