<?php
    require 'config.php';

    //liberada somente com a sessão iniciada
    session_start();
    if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
        echo "Acesso";
    }else{
        header('Location: login.php');
        exit;
    }

    $info = [];//armazenar o registro conforme id recebido
    $id = filter_input(INPUT_GET,'id');//o php entende que ira receber os dados mesmo vindo de uma tabela

    if($id){//testa se recebeu um id
        $sql = "SELECT * FROM usuarios WHERE id = :id";//seleciona todos os campos do id
        $sql = $pdo->prepare($sql);//vai receber uma requisição
        $sql->bindvalue(':id',$id);
        $sql->execute();
        if($sql->rowCount() > 0){//se encontrar o registro com esse id
            $info = $sql->fetch(PDO::FETCH_ASSOC);//joga o item no array
        }else{
            header('Location: index.php');
            exit;
        }
    }
?>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <h2>Editar Usuário</h2><br>
        <a href="sair.php">Sair</a>
        
        <div class="container"> 
            <form method="POST" action="editar_action.php">

                <input type="hidden" name="id" value="<?=$info['id'];?>">
                <!-- para enviar o id também para o editar_action.php, e está oculto -->

                <h3>Edição de Usuários no Sistema</h3> 
                <p>Nome:</p> 
                <input type="text" name="nome" value="<?=$info['nome'];?>"/>
                <!-- O campo value vai trazer as informações armazenadas no array $info -->
                <p>E-mail: </p>
                <input type="email" name="email" value="<?=$info['email'];?>"/>
                <p>Nível: </p>
                <input type="number" step="1" min=1 max=2 name="nivel" value="<?=$info['nivel'];?>"/> 1 - Adm do Sistema 2 - Usuário do Sistema
                <br><br><p><input type="submit" value="Atualizar" /></p>
                    
            </form>
        </div>
        
    </body>
</html>