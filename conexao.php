<?php
    $host="localhost";
    $username="root";
    $senha="root";
    $banco="desafio_SAEP";

    $conexao = new mysqli($host,$username,$senha,$banco);

    if($conexao->connect_error){
        die("Erro de conexão: ".$conexao->connect_error);
    }

?>