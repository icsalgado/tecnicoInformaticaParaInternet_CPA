<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- BOOTSTRAP -->    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Equipes 2021 F1</title>
</head>

<body style="background-color: gray;">
    <!-- Conexão com banco e validação da sessão -->
    <?php 
        require './config.php';//conexão com o bando em outro arquivo

        session_start();
        if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
                
        }else{
            header('Location: ../index.php');
            exit; 
        }

            $lista = [];
            $sql = $pdo->query('SELECT * FROM equipes');
            if($sql->rowCount() > 0){
                $lista = $sql->fetchAll(PDO::FETCH_ASSOC);
            } 
        ?>

    <!-- Cabeçalho da página -->
    <header class="login-page">
        <div class="menu-login">
            <div>
                <h1>Gestão de Equipes Formula 1 2021</h1>
            </div>
            <div>
                <a href="./manage.php" style="padding-right: 10px;">Voltar</a>
                <a href="./sair.php">Sair</a>
            </div>
        </div>
    </header>
    <!-- Tabela com dados do BD - tabela equipes -->
    <main>
        <br>
        <div>
            <a href="addTeam.php"><button class="btn btn-success">Adicionar Equipe</button></a><br>
        </div>
        <br>
        <table class="table table-dark" width="100%">
            <!-- Cabeçalho da tabela -->
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>CHEFE</th>
                <th>NACIONALIDADE</th>
                <th>MOTOR</th>
                <th>TÍTULOS</th>
                <th>EXCLUIR</th>
            </tr>
            <!-- corpo da tabela -->
            <?php foreach ($lista as $dados): ?>
                <tr>
                    <td> <?=$dados['id']; ?> </td>
                    <td> <?=$dados['nome']; ?> </td>
                    <td> <?=$dados['chefe']; ?> </td>
                    <td> <?=$dados['nacionalidade']; ?> </td>
                    <td> <?=$dados['motor']; ?> </td>
                    <td> <?=$dados['titulos']; ?> </td>
                    
                    <td> <a href="./deleteTeam.php?id=<?=$dados['id'];?>" onclick="return confirm('excluir')"><button class="btn btn-danger">X</button></a> </td>
                </tr>
            <?php endforeach; ?>
        </table>
    </main>

    <!-- JAVASCRIPT DO BOOTSTRAP -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>