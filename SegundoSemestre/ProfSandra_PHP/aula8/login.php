<?php
	require 'config.php';

	$dado = [];

		$email = filter_input(INPUT_POST,'email',FILTER_VALIDATE_EMAIL);
		$senha = filter_input(INPUT_POST,'senha');

		if($email && $senha){
			
			$sql = $pdo->prepare("SELECT * FROM usuarios WHERE email = :email AND senha = :senha");
			$sql->bindValue(':email',strtolower($email));
			$sql->bindValue(':senha',md5($senha));
			$sql->execute();
		
			if($sql->rowCount() > 0) {
					
				$dado = $sql->fetch(PDO::FETCH_ASSOC);
				
	    		if($dado['nivel'] == 1){
					session_start();
					$_SESSION['nivel'] = $dado['nivel'];
					header("Location: index.php");
					exit;
				}else{	
					session_start();
					$_SESSION['nivel'] = $dado['nivel'];
					header("Location: painelUsuario.php");
					exit;
				}
			}else{
					header("Location: login.php");
					exit;
			}			
		} 
?>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8"/>
	    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no"/>
    </head>
<body>
    <div> 
        <!-- Usar o php dentro desta mesma página -->
	<form method="POST">
		<h3> Login </h3>
		<input type="email" name="email" placeholder="E-mail"></br></br>
		<input type="password" name="senha" placeholder="Senha"></br></br>
		<button type="submit">Entrar</button> 
		<a href="esqueci.php">Esqueci minha senha?</a>
	</form>
	</div>
</body>
</html>