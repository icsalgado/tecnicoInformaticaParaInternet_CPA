<?php

echo '<pre>';
print_r($_FILES);//mostra o array com dados do arquivo que foi empurrado


if(in_array($_FILES['arquivo']['type'], array('text/txt', 'text/plain'))){//testa se é um tipo de arquivo permitido
    //$upload = $_FILES['arquivo']['name'];//salva os dados do arquivo na variavel
    $upload2 = md5(time().rand(0,100));//aqui ira gerar um nome aleatorio md5 gera um nome hexadecimal

    //move_uploaded_file($_FILES['arquivo']['tmp_name'], './'.$upload);//move o ulpload para a pasta do programa 
    move_uploaded_file($_FILES['arquivo']['tmp_name'], './'.$upload2);//move o ulpload para a pasta do programa 
}else{
    echo "não permitido";
}


