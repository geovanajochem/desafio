venderCarrosForm.php

<?php
    include("conexao.php");

    $id = $_GET['idCarro'];
    $nomeCarro = $_GET['modelo'];

    $comandoCliente=("SELECT * FROM clientes");
    $resultadoClientes = mysqli_query($conexao,$comandoCliente);
    $clientes = array();

    while($cadaCliente = mysqli_fetch_assoc($resultadoClientes)){
        array_push($clientes, $cadaCliente);
    }

    $comandoConc=("SELECT concessionarias.* FROM concessionarias INNER JOIN alocacao 
    ON concessionarias.id_concessionarias = alocacao.concessionaria INNER JOIN automoveis 
    ON automoveis.id = alocacao.automovel WHERE alocacao.automovel =".$id);

    $resultadoConc = mysqli_query($conexao,$comandoConc);
    $concessionarias = array();

    while($cadaConc = mysqli_fetch_assoc($resultadoConc)){
        array_push($concessionarias, $cadaConc);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vender Carro</title>
</head>
<body>
    <a href="exibirCarros.php"> <h1>Carro <?=$nomeCarro;?></h1></a>

    <form action="venderCarro.php" method="post">
        <input type="hidden" name="idCarro" value="">
        <select name="idConcessionaria">
            <?php
            foreach ($concessionarias as $c){?>
            <option value="<?=$c['id']?>"> <?=$c['concessionaria']?></option>
            <?php } ?>
        </select>
        <select name="cliente">
            <?php
            foreach ($clientes as $c){?>
            <option value="<?=$c['Id']?>"> <?=$c['Nome']?></option>
            <?php } ?>
        </select>
        <button type="submit">Vender carro</button>
    </form>

</body>
</html>