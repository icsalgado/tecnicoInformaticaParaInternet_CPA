<?php
    require './config.php';//chama a conexão do banco

    $nome = filter_input(INPUT_POST,'nome', FILTER_SANITIZE_SPECIAL_CHARS);
    $nacionalidade = filter_input(INPUT_POST,'nacionalidade', FILTER_SANITIZE_SPECIAL_CHARS);
    $tempodef1 = filter_input(INPUT_POST,'tempodef1');
    $titulos = filter_input(INPUT_POST,'titulos');
    $equipe = filter_input(INPUT_POST,'equipe', FILTER_SANITIZE_SPECIAL_CHARS);

    if($nome && $nacionalidade && $tempodef1 && $titulos && $equipe){//verifica se tudo foi preenchido
        $sql = "SELECT * FROM pilotos WHERE nome = :nome AND nacionalidade = :nacionalidade AND tempodef1 = :tempodef1 AND titulos = :titulos AND equipe = :equipe";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':nome', $nome);
        $sql->bindvalue(':nacionalidade', $nacionalidade);
        $sql->bindvalue(':tempodef1', $tempodef1);
        $sql->bindvalue(':titulos', $titulos);
        $sql->bindvalue(':equipe', $equipe);
        $sql->execute();

        if($sql->rowCount() > 0){ 
            ?>
                <script>alert("Piloto já cadastrado")</script>
                
            <?php
        }else{
            $sql = "INSERT INTO pilotos (nome, nacionalidade, tempodef1, titulos, equipe) VALUES (:nome, :nacionalidade, :tempodef1, :titulos, :equipe)";
            $sql = $pdo->prepare($sql);
            $sql->bindvalue(':nome', $nome);
            $sql->bindvalue(':nacionalidade', $nacionalidade);
            $sql->bindvalue(':tempodef1', $tempodef1);
            $sql->bindvalue(':titulos', $titulos);
            $sql->bindvalue(':equipe', $equipe);

            $sql->execute();//para executar a requisição

            header('Location: ./driver.php');//redireciona para a pagina do banco
            exit;
        }
    }else{
        header('Location: ./addDriver.php');//senão retorna para o cadastro
    }

?>