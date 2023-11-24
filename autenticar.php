<?php
    session_start();
    include("conexao.php");

    $nome_usuario = $_POST['usuario'];
    $senha_usuario = $_POST['senha'];

    $comando = ("SELECT * FROM usuario WHERE nome_usuario ='$nome_usuario' AND senha_usuario='$senha_usuario'");

    $resultado = $conexao->query($comando);

    if($resultado->num_rows == 1){
        $nome_usuario = $resultado->fetch_assoc();

        $_SESSION['nome_usuario']=$nome_usuario['nome_usuario'];
        $_SESSION['autenticado']=true;
        header("location: patio.php");
    }else{
        header("location: ../index.html");
    }


?>