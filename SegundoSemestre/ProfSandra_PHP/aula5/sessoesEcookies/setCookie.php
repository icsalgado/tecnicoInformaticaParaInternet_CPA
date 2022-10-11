
<p>Coockie salvo</p>
<?php

    if(isset($_COOKIE['nome'])){//isset verifica se o cookie foi setado corretamente
        $coockieNome = $_COOKIE['nome'];
        echo $coockieNome; 
    }