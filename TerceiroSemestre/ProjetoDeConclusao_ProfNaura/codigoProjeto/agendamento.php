<!DOCTYPE html>
<html lang="pt-br">
<head>
	
	<meta charset="utf-8">
	<title>.::Projeto Final::.</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">

</head>
<body>
	<div class="topo"> 
		<img src="img/volunteer-g660ba8ba3_640.png" alt="Topo">
	</div>
	<br><br><br><br>
	<h1>AGENDAMENTO</h1><hr><br>

	<div class="conteudo">
		<?php
			
			$data = $_POST['data'];
			$turno = $_POST['turno'];
			$doacao = $_POST['doacao'];
			$descricao = $_POST['descricao'];
			$nome = $_POST['nome'];
		
			echo "<strong>Detalhes do Agendamento:</strong> <br><br>";
			echo "Data: $data Turno solicitado para recolher a doação: $turno<br><br>";
			echo "Objeto de doação: $doacao<br><br>";
			echo "Descrição: $descricao<br><br>";
			echo "Nome do Responsável: $nome<br><br>";

			echo "<br><br>Declaro estar de acordo com as informações acima descritas.<br> $nome.";
		?>
		<br><br>

		<p>Assinatura:_____________________________</p><br>
		<p>Data:___/___/____</p><br>
		<p>Ao assinar você concorda com todos os termos da doação.</p><br>
		<form>
			<input type="button" value="Imprimir Comprovante" onclick="window.print()">
		</form>

		<br><a href="index.html"> << voltar </a>

	</div>

	<footer>
		<h3>Todos os direitos reservados - desenvolvido por MartiusProject</h3>
	</footer>
</body>
</html>