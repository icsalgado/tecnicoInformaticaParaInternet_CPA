<?php

setcookie('nome', '', time() - 3600); //para apagar o coockie setamos a validade dele para o passado
header('Location: index.php'); 
exit;