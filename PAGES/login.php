<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../STYLES/login.css">
</head>

<?php
    @session_start();
    if (isset($_SESSION['msg'])) {
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }
    ?>
<body>
    <div class="imgMantos">
        <img src="../PICS/imgsMantos/logoAlternativa.svg" alt="">
    </div>
    <form action="../ACTS/login.act.php" method="post" enctype="multipart/form-data" id="formAddCliente" onsubmit="return verificaForm()">
        <div class="DivForm">
        <label>
            <p>E-mail:</p>
            <input type="text" name="email">
        </label>

        <label>
            <p>Senha:</p>
            <input type="password" name="senha1" onkeyup="verificaSenha(senha1.value,senha2.value)" require>
        </label>
        </div>
        <div class="top">
        <input type="submit" value="Entrar" id = "lug">
        <h1>Não tem uma conta? <a href="../PAGES/cadastro.php">Cadastre-se</a></h1>
        </div>
        </form>

</body>

</html>