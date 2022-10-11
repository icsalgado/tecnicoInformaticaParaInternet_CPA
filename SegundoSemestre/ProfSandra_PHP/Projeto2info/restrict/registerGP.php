<?php
    require './config.php';//chama a conexão do banco

    $nome = filter_input(INPUT_POST,'nome', FILTER_SANITIZE_SPECIAL_CHARS);
    $cidade = filter_input(INPUT_POST,'cidade', FILTER_SANITIZE_SPECIAL_CHARS);
    $pais = filter_input(INPUT_POST,'pais', FILTER_SANITIZE_SPECIAL_CHARS);

    if($nome && $cidade && $pais){//verifica se tudo foi preenchido
        $sql = "SELECT * FROM grandepremio WHERE nome = :nome AND cidade = :cidade AND pais = :pais";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':nome', $nome);
        $sql->bindvalue(':cidade', $cidade);
        $sql->bindvalue(':pais', $pais);
        $sql->execute();

        if($sql->rowCount() > 0){ 
            ?>
                <script>alert("Grande Prêmio já cadastrado")</script>
                
            <?php
        }else{
            $sql = "INSERT INTO grandepremio (nome, cidade, pais) VALUES (:nome, :cidade, :pais)";
            $sql = $pdo->prepare($sql);
            $sql->bindvalue(':nome', $nome);
            $sql->bindvalue(':cidade', $cidade);
            $sql->bindvalue(':pais', $pais);

            $sql->execute();//para executar a requisição

            header('Location: ./grandprix.php');//redireciona para a pagina do banco
            exit;
        }
    }else{
        header('Location: ./addGP.php');//senão retorna para o cadastro
    }

?>