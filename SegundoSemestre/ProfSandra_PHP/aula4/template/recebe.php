<?php

$name = filter_input(INPUT_GET, 'nome', FILTER_SANITIZE_SPECIAL_CHARS);//filter_input é uma função do php que captura o campo do formulário e verifica se ele está preenchido. O ultimo parametro corresponde a uma verificação para códigos dentro do formulário
$age = filter_input(INPUT_GET, 'idade', FILTER_VALIDATE_INT);//input_post quando o metodo de envio for POST
$email = filter_input(INPUT_GET, 'email', FILTER_VALIDATE_EMAIL);//o ultimo parametro é de validação de email

if ($name && $age){
    echo "O nome foi ".$name;
    echo "<br>A idade foi ".$age;
    echo "<br>O email foi ".$email;

}else{
    header("Location: ../index.php");//a função header() vai mudar o cabeçalho da requisição, redirecionar para o arquivo escolhido. deve ser usada se nenhuma info fio enviada ainda
    exit;//para encerrar o código
}
