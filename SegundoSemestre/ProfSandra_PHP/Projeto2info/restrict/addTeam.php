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
        <title>Adicionar Equipe F1</title>
    </head>
    <body>

        <!-- Cabeçalho da página -->
        <header class="login-page">
            <div class="menu-login">
                <div>
                    <h1>Adicionar Equipe de F1</h1>
                </div>
                <div>
                    <a href="./team.php">Voltar</a>
                </div>
                <div>
                    <a href="./sair.php">Sair</a>
                </div>
            </div>
        </header>
        <!-- Formulário de cadastro -->
        <div>
            <form method="POST" action="./registerTeam.php">

                    <h3>Cadastro de Equipes no Sistema</h3> 
                    <p>Nome:</p> 
                    <input type="text" name="nome"/>
                    <p>Chefe da equipe:</p> 
                    <input type="text" name="chefe"/>
                    <p>Nacionalidade:</p> 
                    <input type="text" name="nacionalidade"/>
                    <p>Fabricante do motor:</p> 
                    <input type="text" name="motor"/>
                    <p>Titulos de construtores:</p> 
                    <input type="text" name="titulos"/>
                    <br><br><p><input type="submit" value="Cadastrar" /></p>
                    
            </form>
        </div>
        


    </body>
</html>