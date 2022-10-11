<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fundamentos de PHP</title>
</head>
<body>
    <div><h1>Fundamentos de PHP</h1></div>
    
    <div class="aula1">
        <h2>Aula 1</h2>
        <?php
            echo "Ola Mundo";
            //comentário de linha
            /*Comentário
            de
            bloco */

            $variavelInteiro = 5;
            $variavelFloat = 6.7;
            $variavelString = "Meu Nome";
            $variavelBooleana = true;
            $variavelNull = null;
            $variavelVazia = '';
            print_r("<br><br>Tipos de Variaveis<br>Variavel Inteiro");
            var_dump($variavelInteiro);
            print_r("Variavel Float");
            var_dump($variavelFloat);
            print_r("Variavel String");
            var_dump($variavelString);
            print_r("Variavel Booleana");
            var_dump($variavelBooleana);
            print_r("Variavel NULL");
            var_dump($variavelNull);
            print_r("Variavel Vazia");
            var_dump($variavelVazia);
            
            print_r("Constante");
            define('PI', 3.14);//define uma constante
            var_dump(PI);

            print_r('Concatenação');
            $nome = 'Nome';
            $sobrenome = 'Sobrenome';
            $nomeCompleto = $nome.' '.$sobrenome;//concatenação com .
            var_dump($nomeCompleto);
            
        ?>
    </div>
    <div class="aula2">
        <h2>Aula 2</h2>
        <?php
            echo "<br><h3> Arrays </h3><br>";
            $ingredientes = [
                'farinha ',
                'açucar ',
                'leite ',
                'nata ',
                'fermento ',
                'ovos '
            ];//O array não precisa ser declarado em linha
            print_r($ingredientes);

            echo "<br><h3> Spread Operator ... </h3><br>";

            $bolo2 = [
                ...$ingredientes, //ele insere um outro array dentro de um novo array
                'corante '
            ];
            print_r($bolo2);
            
            echo "<br><h3> IF - ELSE </h3><br>";
            $variavelA = 5;
            $variavelB = 6;
            if($variavelA > $variavelB){
                echo "$variavelA é maior que $variavelB";
            }elseif($variavelA < $variavelB){
                echo "$variavelA é menor que $variavelB";
            }else{
                echo "$variavelA é igual $variavelB";
            }

            echo "<br><h3> SWITCH </h3><br>";
            $operador = 'b';
            switch($operador){
                case 1:
                    echo 'O operador é o numero 1';
                    break;
                case 'a':
                    echo 'Ooperador é a letra A';
                    break;
                default:
                    echo 'Operador não listado';
                    break;
            }

            echo "<br><h3> OPERADOR TERNÁRIO </h3><br>";
            $idade = 18;
            echo ($idade >= 18) ? 'Maior de idade' : 'Menor de idade';

            echo "<br><h4> ISSET E NULL </h4><br>";
            
            //$nomeMeio = ' Com Nome';

            //$nomeCompleto .= isset($nomeMeio) ? $nomeMeio : " Sem Nome";
            $nomeCompleto .= $nomeMeio ?? ' Sem Nome';
            
            print_r($nomeCompleto);

            echo "<br><h4> WHILE </h4><br>";
            $loopWhile = 1;
            while($loopWhile <= 5){
                echo $loopWhile;
                $loopWhile++;//incremento para não gerar um loop infinito
            }
            echo "<br><h4> DO WHILE </h4><br>";
            $loopDoWhile = 1;
            do{
                echo $loopDoWhile;
                $loopDoWhile++;
            }while($loopDoWhile <= 5);
            echo "<br><h4> FOR </h4><br>";
            for($loopFor = 1; $loopFor <= 5; $loopFor++){
                echo $loopFor;
            }
            echo "<br><h4> FOREACH </h4><br>";
            foreach($ingredientes as $produto){
                echo '<br>Produto: '.$produto;
            }

        ?>
    </div>
    <div class="aula3">
        <h2>Aula 3</h2>
        <?php
            echo "<h3>Funções</h3><br>";

            function contador(){//definiçãod a função sem receber parametros
                for ($i = 0;$i < 10; $i++){
                    print_r($i);
                }
            }

            contador();//chamada da função

            echo "<h3>Funções com parametros</h3><br>";
            function soma($a, $b){//definição com paramentros
                return ($a+$b);
            }

            echo "<br>";
            print_r(soma(5, 10));//chamada com parametros e retorno do resultado
            echo "<br>";

            echo "<h3>Funções com parametros definido por padrão e tipo</h3><br>";
            function subtrair(int $a, $b, $c=0){//parametro C tem valor predefinido como zero. no caso do int $a quer dizer que este parametro poderá ser apenas um numero inteiro
                return($a-$b-$c);//operação com 3 parametros
            }

            echo subtrair(10, 5);//chamada da função apenas com 2 parametro, se não houvesse um valor padrão para o terceiro parametro, a função retornaria erro


            echo "<h3>Passagem de parametros por referência</h3><br>";

            function parametroRef($a, $b, &$soma){//& indica a referência a uma variavel, que sera alterada em escopo global
                $total = $a + $b;
                $soma = $total;
                return ($total);
            }

            $a = 5;
            $b = 5;
            $soma = 0;

            echo "O valor da variavel soma é ".$soma."<br>";
            parametroRef($a, $b, $soma);
            echo "Agora o valor de soma é ".$soma;

            echo "<h3>Função sort()<h3><br>";

            $lista = [5, 9, 3];
            print_r($lista);
            echo "<br>";
            sort($lista);//ordena o array em ordem crescente
            print_r($lista);

            echo "<h3>Arrow function<h3><br>";

            $dizimo = fn($valor) => $valor*0.1;//é uma função anônima, ou seja, sem nome, que executa apenas um comando e serve para simplificar o código
            echo $dizimo(100);

            echo "<h3>Funções recursivas<h3><br>";
            //se usa para varredura de pastas por exemplo
            function dividir($numero){
                $metade = $numero/2; //até aqui é normal
                echo $metade."<br>";
                if(round($metade) > 0){//arredonda com round() a variavel metade e testa
                    dividir($metade);//chama recursivamente a função dividir
                }
            }

            dividir(10);

        ?>
        <div class="matematicas">
                <h3>Funções matematicas</h3>
            <table border="1px">
                <tr>
                    <td>abs()</td>
                    <td>módulo ou valor absoluto</td>
                </tr>
                <tr>
                    <td>pi()</td>
                    <td>valor de PI</td>
                </tr>
                <tr>
                    <td>floor()</td>
                    <td>arredonda para menos</td>
                </tr>
                <tr>
                    <td>ceil()</td>
                    <td>arredonda para mais</td>
                </tr>
                <tr>
                    <td>round()</td>
                    <td>arredonda se maior que .4 para cima e se menor para baixo</td>
                </tr>
                <tr>
                    <td>rand()</td>
                    <td>número aleatório</td>
                </tr>
                <tr>
                    <td>max()</td>
                    <td>Maior de uma lista</td>
                </tr>
                <tr>
                    <td>min()</td>
                    <td>menor de uma lista</td>
                </tr>
            </table>
        </div>
        <div class="strings">
                <h3>Funções de strings</h3>
            <table border="1px">
                <tr>
                    <td>trim()</td>
                    <td>Retira os espaços de uma string</td>
                </tr>
                <tr>
                    <td>strlen()</td>
                    <td>Tamanho da string</td>
                </tr>
                <tr>
                    <td>strtolower()</td>
                    <td>tudo em caixa baixa</td>
                </tr>
                <tr>
                    <td>strtoupper()</td>
                    <td>tudo em caixa alta</td>
                </tr>
                <tr>
                    <td>substr()</td>
                    <td>Pega uma aprte da string</td>
                </tr>
                <tr>
                    <td>strpos()</td>
                    <td>busca um caractere e retorna a posição</td>
                </tr>
                <tr>
                    <td>ucfirst()</td>
                    <td>primeira letra da primeira palavra em caixa alta</td>
                </tr>
                <tr>
                    <td>ucwords()</td>
                    <td>Primeiras letras maiusculas</td>
                </tr>
                <tr>
                    <td>explode()</td>
                    <td>transforma em array</td>
                </tr>
            </table>
        </div>
        <div class="arrays">
            <h3>Funções de arrays</h3>
            <table border="1px">
                <tr>
                    <td>count()</td>
                    <td>quantos itens tem no array</td>
                </tr>
                <tr>
                    <td>array_diff()</td>
                    <td>compara duas listas e retorna um novo array com os itens não repetidos</td>
                </tr>
                <tr>
                    <td>array_filter()</td>
                    <td>filtra um array e gera um novo conforme o callback</td>
                </tr>
                <tr>
                    <td>array_pop()</td>
                    <td>remove o ultimo item</td>
                </tr>
                <tr>
                    <td>array_shift()</td>
                    <td>remove o primeiro item</td>
                </tr>
                <tr>
                    <td>in_array()</td>
                    <td>buscar dados num array</td>
                </tr>
                <tr>
                    <td>array_search()</td>
                    <td>retorna a posição de uma busca</td>
                </tr>
                <tr>
                    <td>sort()</td>
                    <td>ordena em ordem crescente</td>
                </tr>
                <tr>
                    <td>asort()</td>
                    <td>retorna em ordem crescente mantendo o indice</td>
                </tr>
                <tr>
                    <td>rsort()</td>
                    <td>ordena de forma descrescente</td>
                </tr>
                <tr>
                    <td>arsort()</td>
                    <td>decrescente mantendo o indice</td>
                </tr>
                <tr>
                    <td>implode()</td>
                    <td>transforma em string</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>