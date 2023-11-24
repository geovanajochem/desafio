<?php
    include("conexao.php");
    $idCarro = $_POST['idCarro'];
    $idConc = $_POST['idConcessionaria'];

    $comando = ("UPDATE alocacao SET quantidade = quantidade-1 
    WHERE automovel = ".$idCarro." AND concessionaria = ".$idConc);

    $resultado = mysqli_query($conexao,$comando);

    $comandoArea = ("SELECT area FROM alocacao WHERE automovel = ".$idCarro." AND concessionaria = ".$idConc);

    $resultadoArea=mysqli_query($conexao,$comandoArea);
    $idArea = mysqli_fetch_assoc($resultadoArea);

    if($resultado){
        header("Location: patio.php?id=".$idArea['area']);
    }
?>