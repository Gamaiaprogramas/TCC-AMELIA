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
        <a href="../PAGES/inicio.php" >
        <img src="../PICS/imgsMantos/logoPequena.svg" alt="" class="logo-site">
        </a>
        <section>
    <form action="../PAGES/pesquisar.php" name="termo"  class="selecao" method="GET">
        <ul>
            <li class="dropdown">
                Clubes
                <ul class="submenu">
                    <li onclick="selecionarClube('Corinthians')">Corinthians</li>
                    <li onclick="selecionarClube('Flamengo')">Flamengo</li>
                    <li onclick="selecionarClube('Palmeiras')">Palmeiras</li>
                    <li onclick="selecionarClube('São Paulo')">São Paulo</li>
                </ul>
                <input type="hidden" name ="termo" id="termoInput">
            </li>

            <li class="dropdown">
                Seleções
                <ul class="submenu">
                    <li onclick="selecionarClube('Brasil')">Brasil</li>
                    <li onclick="selecionarClube('Irlanda')">Irlanda</li>
                    <li onclick="selecionarClube('Canada')">Canada</li>
                    <li onclick="selecionarClube('Estados Unidos')">Estados Unidos</li>
                </ul>
                <input type="hidden" name="termo" id="termoInput">
            </li>
        </ul>
    </form>

    <form action="../PAGES/pesquisar.php" name="termo3" class="selecao" method="GET">
    <ul>
        <li onclick="selecionarTipo('Masculina')">Masculino</li>
        <li onclick="selecionarTipo('Feminina')">Feminino</li>
        <input type="hidden" name="termo3" id="termoInput">
    </ul>
</form>

</section>
    <script>
    function selecionarClube(clube) {
        document.getElementById('termoInput').value = clube;
        document.forms['termo'].submit();
    }

    function selecionarTipo(tipo) {
        // Atualiza o valor do input hidden
        document.getElementById('termoInput').value = tipo;
        // Submete o formulário
        document.forms['termo3'].submit();
    }
</script>

        <div>

        
        <form action="../PAGES/pesquisar.php" class="pesquisa" method="GET">
            <input  class="Pesquisar" type="text" name="termo" placeholder="O que você procura...?">
            <input type="submit"class="material-symbols-outlined" value=" search" >
        </form>
        <a href="<?php 

if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
    echo "../PAGES/perfil.php";
}else {
    echo "../PAGES/login.php";
}

            ?>">

            <img src="<?php 

if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
    echo "$_SESSION[foto]";
}else {
    echo "../PICS/imgsMantos/imgCarrinho.svg";
}

            ?>" alt="">
        </a>
        <a href="../PAGES/carrinho.php">
            <img src="../PICS/imgsMantos/imgBonecoLogin.svg" alt="">
        </a>
    </div>
    </header>
