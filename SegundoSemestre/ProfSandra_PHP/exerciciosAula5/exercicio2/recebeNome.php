<?php
     //cadastro.php 
        $nome = filter_input(INPUT_POST, 'nome',FILTER_SANITIZE_SPECIAL_CHARS);//recebe os dados do formulário

        $cadastro = file_get_contents('lista.txt');//pega os dados do txt e coloca na variavel
        $cadastro .= "<li>".$nome."</li>";//concatena a variavel com os dados recebidos do formulário
        file_put_contents('lista.txt', $cadastro);//reescreve no txt os dados atualizados

        header('Location:index.php');//retorna para a pagina principal
?>