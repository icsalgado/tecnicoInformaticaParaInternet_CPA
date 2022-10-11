<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arquivos externos</title>
</head>
<body>
    <div>
        <h2>Requisitando arquivos externos no php</h2>
        <?php
            require('./template/header.php');//se não existir o arquivo ira retornar erro
            require_once('./template/header.php');//chama apenas se for a primeira vez
        ?>

    <form method="GET" action="./template/recebe.php"><!--GET mostra os dados enviados na barra da URL, o POST mostra apenas o arquivo de destino. o action envia os dados um arquivo externo-->
        <label>Nome:</br>
        <input type="text" name="nome"/><br>
        <label>Idade:</br>
        <input type="text" name="idade"/><br>
        <label>E-mail:</br>
        <input type="text" name="email"/><br>
        <input type="submit" value="Enviar"/>
    </form>
    </div>
</body>
</html>