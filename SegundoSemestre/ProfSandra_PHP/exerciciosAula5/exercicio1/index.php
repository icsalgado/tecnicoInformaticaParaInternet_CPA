<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logado</title>
</head>
<body>
    <?php

    $name = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_SPECIAL_CHARS);

    if($name){
        session_start();
        echo "Olá, ".$name;
    }else{
        header('Location: login.php');
        exit;
    }
    

    ?>
    <a href="./sair.php">Sair</a>
</body>
</html>
