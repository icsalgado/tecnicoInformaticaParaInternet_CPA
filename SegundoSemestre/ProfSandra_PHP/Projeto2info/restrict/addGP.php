<?php
    //liberada somente com a sessão iniciada
    session_start();
    if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
        
    }else{ 
        header('Location: ./login.php');
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS -->
            <link rel="stylesheet" href="style.css">
        <title>Adicionar Grande Prêmio F1</title>
    </head>
    <body>
        <!-- Cabeçalho da página -->
        <header class="login-page">
            <div class="menu-login">
                <div>
                    <h1>Adicionar Grande Prêmio de F1</h1>
                </div>
                <div>
                    <a href="./grandprix.php">Voltar</a>
                </div>
                <div>
                    <a href="./sair.php">Sair</a>
                </div>
            </div>
        </header>
        <!-- Formulário de cadastro -->
        <div> 
            <form method="POST" action="./registerGP.php">

                    <h3>Cadastro de Pilotos no Sistema</h3> 
                    <p>Nome:</p> 
                    <input type="text" name="nome"/>
                    <p>Cidade:</p> 
                    <input type="text" name="cidade"/>
                    <p>Pais:</p> 
                    <input type="text" name="pais"/>
                    <br><br><p><input type="submit" value="Cadastrar" /></p>
                    
            </form>
        </div>
        
    </body>
</html>