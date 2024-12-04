<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar-produto</title>
    <link rel="stylesheet" href="../STYLES/cadastroProd.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../PICS/imgsMantos/logoPequena.svg" type="image/x-icon">
</head>
<?php
    @session_start();
    if (isset($_SESSION['msg'])) {
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }
    ?>
<body>
    <nav>
     <h1>Cadastre Seu produto!</h1>
    </nav>
    <main>
        <form action="../ACTS/adicionarProd.act.php" method="post" enctype="multipart/form-data" id="formAddCamisa" onsubmit="return verificaForm2()">
            <label for="nomeCamisa">
                <p>Nome produto: </p>
                <input type="text"  name="nomeCamisa" placeholder = "Ex: Camisa Bahia">
            </label>
            <label for="infoProduto">
                <p>Informação produto: </p>
                <input type="text" name="infoProduto" placeholder = "Ex: Camisa de campeonato...">
            </label>
            <label for="precoProduto">
                <p>Preço do produto: </p>
                <input type="number" placeholder = "Ex: 100.00" name="precoProduto">
            </label>
            <label for="timeProduto">
                <p>Time produto: </p>
                <input type="text" name="timeProduto" placeholder= "Ex: Corinthians">
            </label>
            <label for="generoPro">
                <p>Gênero</p>
                <select id="opcaoTime" name="generoPro" class="select-box">
                    <option value="" disabled selected>Selecionar</option>
                    <option value="masculino">Masculino</option>
                    <option value="feminino">Feminino</option>
                    <option value="unisex">Unisex</option>
                </select>

            </label>
            <div>
            <p id="imgContainer">
                <img src="../PICS/imgsMantos/imgSite.png" alt="" id="previewImg" height = "142vh" width = "143vw">
            </p>
            <p>
                <label for="fileFoto">

                    <p class="txtCansado2">Escolha a foto do produto</p>
                </label>
                <input type="file" name="foto" id="fileFoto" id="inputGroupFile01" onchange="previewFile(this);">
            </p>
        </div>
             <input type="submit" class = "enviarBut" value="Enviar"> 
            
        </form>
    </main>
    <script>
        function previewFile(input) {
        var file = input.files[0];
        var reader = new FileReader();

        reader.onload = function (e) {
            document.getElementById('previewImg').src = e.target.result;
        };

        if (file) {
            reader.readAsDataURL(file);
        }
    }
    </script>
</body>
</html>