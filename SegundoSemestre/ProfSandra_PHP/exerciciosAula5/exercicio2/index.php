<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
</head>
<body>

    <form method="POST" action="recebeNome.php">
        <label>Novo Nome:</label>
        <input type="text" name="nome">
        <input type="submit" value="Salvar">
    </form>

    <h1>Lista de Nomes</h1>

    
    <ul>
        <?php
            $lista = file_get_contents('lista.txt');//pega os dados da lista.txt

            $lista = explode("</li>", $lista);// separa os dados em um array conforme o fim da tag li
            $linhas = count($lista);//pega o numero de elementos desse array
        
            for($i=0; $i < $linhas; $i++){
                
                echo $lista[$i];//renderiza na tela os elementos conforme o tamanho do array
            }
            
        ?>
    </ul>

</body>
</html>