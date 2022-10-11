<?php
    require 'config.php';
    session_start();
    if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
        echo "Acesso";
    }else{
        header('Location: login.php');
        exit;
    }

    $id = filter_input(INPUT_GET,'id');
    if($id){//se veio com dados
        $sql = "DELETE FROM usuarios WHERE id = :id";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':id', $id);
        $sql->execute();
        header('Location: index.php');
        exit;
    }
?>