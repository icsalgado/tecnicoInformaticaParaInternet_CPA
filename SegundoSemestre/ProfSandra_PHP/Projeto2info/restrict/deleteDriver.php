<?php
    require './config.php';

    session_start();
    if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){
        header('Location: ./driver.php');
    }else{
        header('Location: ./login.php');
        exit;
    }

    $id = filter_input(INPUT_GET,'id');
    if($id){
        $sql = "DELETE FROM pilotos WHERE id = :id";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':id', $id);
        $sql->execute();
        header('Location: ./driver.php');
        exit;
    }
?>