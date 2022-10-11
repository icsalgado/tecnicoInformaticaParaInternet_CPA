<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <?php
            require './config.php';//conexão com o bando em outro arquivo

            session_start();
            if(isset($_SESSION['nivel']) && !empty($_SESSION['nivel'])){//verifica se a sessão foi iniciada e se não está vazio
                
            }else{
                header('Location: login.php');
                exit; 
            }

            $lista = [];
            $sql = $pdo->query('SELECT * FROM usuarios');
            if($sql->rowCount() > 0){//verifica se tem usuario cadastrado
                $lista = $sql->fetchAll(PDO::FETCH_ASSOC);
            }

            /* Agora começar a componentização com CRUD
            $sql = $pdo->query('SELECT * FROM usuarios');//seleção de todos os campos da tabela usuaios
            $dados = $sql->fetchAll(PDO::FETCH_ASSOC);//pega todos os dados sem o parametro "PDO::FETCH_ASSOC" (que é uma constante estatica do pdo) os dados serão duplicados
            
            echo "Total: ".$sql->rowCount();//para contar as linhas do BD
            echo '<pre>';//para mostrar cada registro em uma linha
            print_r($dados);//mostra um array com os dados do banco  */ 
        ?>
        <a href="adicionar.php">Adicionar Usuário</a><br>
        <a href="sair.php">Sair</a>
        <br>
        <br>
        <table border="1px" width="100%">
            <!-- Cabeçalho -->
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Ações</th>
            </tr>
            <!-- corpo da tabela -->
            <?php foreach ($lista as $dados): ?>
                <tr>
                    <!-- <td> <?php echo $dados['id']; ?> </td> Linha melhorada abaixo-->
                    <td> <?=$dados['id']; ?> </td>
                    <td> <?=$dados['nome']; ?> </td>
                    <td> <?=$dados['email']; ?> </td>
                    <td>    
                        <a href="editar.php?id=<?=$dados['id'];?>">[Editar]</a> 
                            <!-- para editar o id correspondente -->
                        <a href="excluir.php?id=<?=$dados['id'];?>" onclick="return confirm('excluir')">[Excluir]</a>
                            <!-- para editar o id correspondente --> 
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>
    </body>
</html>






