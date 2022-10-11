<?php

session_start();//iniciar sessão php

$name = filter_input(INPUT_GET, 'nome', FILTER_SANITIZE_SPECIAL_CHARS);//filter_input é uma função do php que captura o campo do formulário e verifica se ele está preenchido. O ultimo parametro corresponde a uma verificação para códigos dentro do formulário
$age = filter_input(INPUT_GET, 'idade', FILTER_VALIDATE_INT);//input_post quando o metodo de envio for POST
$email = filter_input(INPUT_GET, 'email', FILTER_VALIDATE_EMAIL);//o ultimo parametro é de validação de email

if ($name && $age){

    //configurando um cookie - recebe 3 parametros, nome, valor salvo e validade, deve ser configurado antes de exibir qualquer coisa na tela

    $validadeCookie = time()+(86400*30);//essa variavel conta a partir da data atual com o time(), um dia multiplicado por 30.
    setcookie('nome', $name, $validadeCookie);//função que configura o cookie

    echo "O nome foi ".$name;
    echo "<br>A idade foi ".$age;
    echo "<br>O email foi ".$email; 

}else{
    $_SESSION['aviso']='Preencha os campos corretamente';//salva o aviso no array $_SESSION
    header("Location: index.php");//a função header() vai mudar o cabeçalho da requisição, redirecionar para o arquivo escolhido. deve ser usada se nenhuma info fio enviada ainda
    exit;//para encerrar o código
}
