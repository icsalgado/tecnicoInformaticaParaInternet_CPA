<?php
	session_start();
	unset($_SESSION['nivel']); //destroi a sessão
	header("Location: login.php");
	exit;
?>