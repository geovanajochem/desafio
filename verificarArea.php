<?php 
    include("conexao.php");
    $id = $_POST["id"];

    $comando = "SELECT * FROM alocacao WHERE area  ='$id' AND quantidade > 0";
    $resultado = $conexao->query($comando);
    $linhas = mysqli_num_rows($resultado);

    echo $linhas;

?>