<?php
    require 'config.php';
    $id = filter_input(INPUT_POST,'id');
    $nome = filter_input(INPUT_POST,'nome');
    $email = filter_input(INPUT_POST,'email');
    $nivel = filter_input(INPUT_POST,'nivel');

    if($id && $nome && $email && $nivel){//verifica se tudo foi preenchido
        $sql = "UPDATE usuarios SET nome = :nome, email = :email, nivel = :nivel WHERE id = :id";//requisição de atualização no banco no id selecionado
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':id',$id);
        $sql->bindvalue(':nome',$nome);
        $sql->bindvalue(':email',$email);
        $sql->bindvalue(':nivel',$nivel);
        $sql->execute();
        header('Location: index.php');
        exit;
    }else{
        header('Location: index.php');
        exit;
    }
?>