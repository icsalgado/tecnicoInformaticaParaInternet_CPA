<?php
    require 'config.php';//chama a conexão do banco

    $nome = ucwords(strtolower(filter_input(INPUT_POST,'nome', FILTER_SANITIZE_SPECIAL_CHARS)));//validação do campo
    $email = strtolower(filter_input(INPUT_POST,'email', FILTER_VALIDATE_EMAIL));
    $senha = md5(filter_input(INPUT_POST,'senha'));
    $nivel = filter_input(INPUT_POST,'nivel');

    if($nome && $email && $senha && $nivel){//verifica se tudo foi preenchido

        // $sql = $pdo->query("INSERT INTO usuarios (nome, email, senha, nivel) VALUE ('$nome', '$email', '$senha', '$nivel')");//esta é a forma não tão segura para ataques via formulário
        
        $sql = "SELECT * FROM usuarios WHERE nome = :nome AND email = :email";
        $sql = $pdo->prepare($sql);
        $sql->bindvalue(':nome', $nome);
        $sql->bindvalue(':email', $email);
        $sql->execute();

        //if($sql->fetch() > 0){
        if($sql->rowCount() > 0){ 
            ?>
                <html><a href="index.php">Voltar</a></html>
                <script>alert("Usuário já cadastrado")</script>
            <?php
        }else{
            $sql = "INSERT INTO usuarios (nome, email, senha, nivel) VALUE (:nome, :email, :senha, :nivel)";//forma mais segura
            $sql = $pdo->prepare($sql);
            $sql->bindvalue(':nome', $nome);
            $sql->bindvalue(':email', $email);
            $sql->bindvalue(':senha', $senha);
            $sql->bindvalue(':nivel', $nivel);

            $sql->execute();//para executar a requisição

            header('Location: index.php');//redireciona para a pagina do banco
            exit;
        }
    }else{
        header('Location: adicionar.php');//senão retorna para o cadastro
    }

?>