<?php
    //liberada somente com a sessão iniciada
    session_start();
    if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
        echo "Acesso";
    }else{ 
        header('Location: login.php');
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <h2>Adicionar Usuário</h2><br>
        <a href="sair.php">Sair</a>
        
        <div class="container"> 
            <form method="POST" action="adicionar_action.php">

                    <h3>Cadastro de Usuários no Sistema</h3> 
                    <p>Nome:</p> 
                    <input type="text" name="nome"/>
                    <p>E-mail: </p>
                    <input type="email" name="email"/>
                    <p>Senha:</p>
                    <input type="password" name="senha"/>
                    <p>Nível: </p>
                    <input type="number" step="1" min=1 max=2 name="nivel"/> 1 - Adm do Sistema 2 - Usuário do Sistema
                    <br><br><p><input type="submit" value="Cadastrar" /></p>
                    
            </form>
        </div>
        
    </body>
</html>