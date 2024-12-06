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
    include('../ACTS/connect.php');
    $codigo = $_SESSION['codigo'];
    $usuarios = mysqli_query($con, "SELECT * FROM `registro` WHERE `codigo` = '$codigo'");
    $usuario = mysqli_fetch_assoc($usuarios);
    
    ?>
<body>
    <nav>
     <h1>Cadastre Seu produto!</h1>
    </nav>
    <main>
   
        <form action="../ACTS/editarPerfil.php" method="post" enctype="multipart/form-data" id="formAddCamisa" onsubmit="return verificaForm2()">
             <input type="hidden" name="codigo" value="<?php echo $usuario['codigo']?>">
    <input type="hidden" name="fotoUrl" value="<?php echo $usuario['fotoUrl']?>">
            <label for="nome">
                <p>Nome: </p>
                <input type="text"  name="nome"  value ="<?php echo $usuario['nome'] ?>">
            </label>
            <label for="email">
                <p>Email:</p>
                <input type="text" name="email"  value=" <?php echo $usuario['email'] ?>">
            </label>
            <label for="telefone">
                <p>telefone:</p>
                <input type="text" name="telefone"  value=" <?php echo $usuario['telefone'] ?>">
            </label>
            <label for="cpf">
                <p>cpf: </p>
                <input type="text"  name="cpf" value="<?php echo $usuario['cpf'] ?>">
            </label>
            <label for="nascto">
                <p>Nascimento: </p>
                <input type="date" name="nascto" value="<?php echo $usuario['nascto'] ?>">
            </label>
            <label for="generoPro">
                <p>Gênero</p>
                  <select id="opcao" name="sexo" class="select-box">
                    <option value="opcao1" <?php if($usuario['sexo'] == "opcao1"){echo "selected";} ?>>Masculino</option>
                    <option value="opcao2" <?php if($usuario['sexo'] == "opcao2"){echo "selected";} ?>>Feminino</option>
                    <option value="opcao3" <?php if($usuario['sexo'] == "opcao3"){echo "selected";} ?>>Não Binario</option>
                    <option value="opcao4" <?php if($usuario['sexo'] == "opcao4"){echo "selected";} ?>>Prefiro não dizer</option>
                </select>

            </label>
            <div>
            <p id="imgContainer">
                <img src="<?php echo $usuario['fotoUrl'] ?>" alt="" id="previewImg" height = "142vh" width = "143vw">
            </p>
            <p>
                <label for="fileFoto">

                    <p class="txtCansado2">Escolha a foto do produto</p>
                </label>
                <input type="file" name="newFoto" id="fileFoto" id="inputGroupFile01" onchange="previewFile(this);">
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