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
        <h2>Sessões</h2>
        
        <?php
            session_start();//inicia uma sessão PHP

            require_once('./setCookie.php');//apenas para exibir o coockie salvo
            if($_SESSION['aviso']){//testa se a variavel esta com mensagem
                echo $_SESSION['aviso'];//exibe a menságem
                $_SESSION['aviso'] = '';//remove a mensagem para não ficar aparecendo sempre
            }
        ?>
        <a href="unsetCookie.php">Apagar cookie</a>

    <form method="GET" action="./recebe.php"><!--GET mostra os dados enviados na barra da URL, o POST mostra apenas o arquivo de destino. o action envia os dados um arquivo externo-->
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