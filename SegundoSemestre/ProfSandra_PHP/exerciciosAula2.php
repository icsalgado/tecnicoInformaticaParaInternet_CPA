<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicios Aula 2</title>
</head>
<body>
    <div class="exercicio1">
        <h1>Exercicio 1</h1>
        <p>Exibir 10 linhas com 10 traços em cada</p>
        <?php
            for($i = 1; $i <= 10; $i++){
                for($j = 1; $j <= 10; $j++){
                    print_r('-');
                }
                echo "<br>";
            }
        ?>
    </div>
    <div class="exercicio2">
        <h1>Exercicio 2</h1>
        <p>Encontrar o erro</p>
        <?php
            $lista = [
                'nome' => 'Sandra',
                'idade' => 70,
                'atributos' => [
                
                'força' => 60,
                'agilidade' => 80,
                'destreza' => 40
                ],
                //vida = 1000
                'vida' => 1000
                ];
                echo "Nome: ".$lista['nome']."</br>";
                echo "Força: ".$lista['atributos']['força']."</br>";
                echo "Vida: ".$lista['vida'];
        ?>
    </div>
</body>
</html>