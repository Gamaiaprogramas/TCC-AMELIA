<?php 

require("../ACTS/connect.php");
@session_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="../STYLES/header.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../PICS/imgsMantos/logoPequena.svg" type="image/x-icon">
</head>
<body>
    <header>
        <a href="../PAGES/inicio.php">
        <img src="../PICS/imgsMantos/logoPequena.svg" alt="" class="logo-site">
        </a>
        <form action="" class="selecao">
            <li value="dasd">Clubes</li>
            <li>Seleções</li>
            <li>Masculino</li>
            <li>Feminino</li>
        </form>
        <div>

        
        <form action="pesquisar.act.php" class="pesquisa" method="GET">
            <input  class="Pesquisar" type="text" name="termo" placeholder="O que você procura...?">
            <input type="submit"class="material-symbols-outlined" value=" search" >
        </form>
        <a href="../ColocaArquivoDeSegurança">

            <img src="<?php 

if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
    echo "$_SESSION[foto]";
}else {
    echo "../PICS/imgsMantos/imgCarrinho.svg";
}

            ?>" alt="">
        </a>
        <a href="">
            <img src="../PICS/imgsMantos/imgBonecoLogin.svg" alt="">
        </a>
    </div>
    </header>