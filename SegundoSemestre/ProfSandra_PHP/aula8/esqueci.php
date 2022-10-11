<?php
	require 'config.php';

	$email = filter_input(INPUT_POST,'email',FILTER_VALIDATE_EMAIL);
	if($email){
		$sql = "SELECT * FROM usuarios WHERE email = :email";
		$sql=$pdo->prepare($sql);
		$sql->bindValue(':email',strtolower($email));
		$sql->execute();

		if($sql->rowCount() > 0){
			$sql = $sql->fetch(PDO::FETCH_ASSOC);
			$id = $sql['id'];

			$token = md5(time().rand(0,99999).rand(0,99999));
			//hash da tabela usuarios_token é o $token
			$sql = "INSERT INTO usuarios_token (id_usuario,hash,expirado_em) VALUES (:id_usuario,:hash,:expirado_em)";
			$sql = $pdo->prepare($sql);
			$sql->bindValue(':id_usuario',$id);
			$sql->bindValue(':hash',$token);
			$sql->bindValue(":expirado_em",date('Y-m-d H:i',strtotime('+1 months')));
			$sql->execute();

			//Exemplo link para servidores externos:
			//$link = "http://meusite.com/redefinir.php?token=".$token;
			//$mensagem = "Acesse seu e-mail e clique no link para redefinir sua senha!";


			//Exemplo de link para servidor local:
			$link = "http://2info/ProfSandra_PHP/aula8/redefinir.php?token=".$token;
			$mensagem = "Clique no link para redefinir sua senha: <br/>".$link;

			$assunto = "Redefinição de senha";
			$header = 'From: seuemail@gmail.com.br'."\r\n".'X-Mailer:PHP/'.phpversion();
			echo $mensagem;
			exit;

		}

	}


?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8"/>
	    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no"/>
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
	
	</head>
<body>
	<div class="container-fluid">
	
			<form method="POST">
				Qual seu e-mail?<br>
				<input type="email" name="email"></br></br>
				<button type="submit" class="btn btn-info">Enviar</button> 
				
			</form>

			<script type="text/javascript" src="assets/js/jquery-3.5.1.min.js"/></script>
			<script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"/></script>
	</div>
</body>
</html>