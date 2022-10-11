<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- CSS -->
        <link rel="stylesheet" href="style.css">
        
        <title>Painel de Controle</title>
    </head>

    <body >
        <?php
            require './config.php';//conexão com o bando em outro arquivo

            session_start();
            if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
                
            }else{
                header('Location: ./login.php');
                exit;
            }
        ?>
        <!-- Cabeçalho da página -->
        <header class="login-page">
            <div class="menu-login">
                <div>
                    <h1>2021 Formula 1 Painel de Controle</h1>
                </div>
                <div>
                    <a href="./sair.php">Sair</a>
                </div>
            </div>
        </header> 
        <!-- Cards com sessões de controle -->
        <section class="viewmain">
            <div class="card">
                <a href="./team.php">
                    <h3>Equipes</h3><br>
                    <img src="../assets/img/equipes.jpg" width="250px">
                </a>
            </div>
            <div class="card">
                <a href="./driver.php">
                    <h3>Pilotos</h3><br>
                    <img src="../assets/img/driver.jpg" width="250px">
                </a>
            </div>
            <div class="card">
                <a href="./grandprix.php">
                    <h3>Grande Prêmio</h3><br>
                    <img src="../assets/img/circuit.jpg" width="250px">
                </a>
            </div>
        </section>
        
    </body>
</html>