<?php
    require './config.php';

    session_start();
    if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){
        header('Location: ./team.php');
    }else{
        header('Location: ./login.php');
        exit;
    }

    $id = filter_input(INPUT_GET,'id');
    if($id){
        $sql = "DELETE FROM equipes WHERE id = :id";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':id', $id);
        $sql->execute();
        header('Location: ./team.php');
        exit;
    }
?>