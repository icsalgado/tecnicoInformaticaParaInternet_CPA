<?php
    require './config.php';//chama a conexão do banco

    $nome = filter_input(INPUT_POST,'nome', FILTER_SANITIZE_SPECIAL_CHARS);
    $chefe = filter_input(INPUT_POST,'chefe', FILTER_SANITIZE_SPECIAL_CHARS);
    $nacionalidade = filter_input(INPUT_POST,'nacionalidade', FILTER_SANITIZE_SPECIAL_CHARS);
    $motor = filter_input(INPUT_POST,'motor', FILTER_SANITIZE_SPECIAL_CHARS);
    $titulos = filter_input(INPUT_POST,'titulos');

    if($nome && $chefe && $nacionalidade && $motor && $titulos){//verifica se tudo foi preenchido
        $sql = "SELECT * FROM equipes WHERE nome = :nome AND chefe = :chefe AND nacionalidade = :nacionalidade AND motor = :motor AND titulos = :titulos";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':nome', $nome);
        $sql->bindvalue(':chefe', $chefe);
        $sql->bindvalue(':nacionalidade', $nacionalidade);
        $sql->bindvalue(':motor', $motor);
        $sql->bindvalue(':titulos', $titulos);
        $sql->execute();

        //if($sql->fetch() > 0){
        if($sql->rowCount() > 0){
            header('Location: ./team.php');
        }else{
            $sql = "INSERT INTO equipes (nome, chefe, nacionalidade, motor, titulos) VALUES (:nome, :chefe, :nacionalidade, :motor, :titulos)";
            $sql = $pdo->prepare($sql); 
            $sql->bindvalue(':nome', $nome);
            $sql->bindvalue(':chefe', $chefe);
            $sql->bindvalue(':nacionalidade', $nacionalidade);
            $sql->bindvalue(':motor', $motor);
            $sql->bindvalue(':titulos', $titulos);

            $sql->execute();//para executar a requisição

            header('Location: ./team.php');//redireciona para a pagina do banco
            exit;
        }
    }else{
        header('Location: ./registerTeam.php');//senão retorna para o cadastro
    }

?>