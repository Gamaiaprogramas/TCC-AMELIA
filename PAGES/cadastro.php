<?php
    @session_start();
    if (isset($_SESSION['msg'])) {
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }
    ?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../STYLES/cadastro.css">
</head>
<body>

<div class="containerForm2">

        <div class="LogoAlt">
            <img src="../PICS/imgsMantos/logoAlternativa.svg" alt="">
        </div>

        <form action="../ACTS/cadastro.act.php" method="post" enctype="multipart/form-data" id="formAddCliente" onsubmit="return verificaForm()">

            <div class="tudoForm">

            <div class="esquerda">
            <label>Nome: <input type="text" name="nome" required></label>

            <label>E-mail: <input type="email" name="email" required></label>
         
            <label>CPF: <input type="text" name="cpf" maxlength="14" id="cpf" required></label>

            <label>Informe seu gênero:
                <select id="opcao" name="sexo" required>
                    <option value="opcao1">Masculino</option>
                    <option value="opcao2">Feminino</option>
                    <option value="opcao3">Não binário</option>
                    <option value="opcao4">Prefiro não informar</option>
                </select>
            </label>

            <label>Telefone: <input maxlength="15" type="text" name="telefone"id="telefone" required></label>

            <label>Nascimento: <input type="date" name="nascto" required></label>

            <label>Senha: <input type="password" name="senha1" onkeyup="verificaSenha(senha1.value, senha2.value)" required></label>

            <label>Confirmar senha: <input type="password" name="senha2" onkeyup="verificaSenha(senha1.value, senha2.value)" required></label>
        </div>

            <div id="imgContainer">
                <div for="fileFoto">Foto de perfil:</div>
                 <div>
                    <img src="../PICS/imgsMantos/imgSite.png" id="previewImg" alt="Preview da imagem">
                </div>
                
                <label for="fileFoto" class="custom-file-upload">Escolher arquivo</label>
                <input type="file" name="foto" id="fileFoto" onchange="previewFile(this);">
               
            </div>

        </div>
   
            
            <div class="loginLink">
                    <input type="submit" class="buttCadastro" value="Cadastrar-se">
                    <a href="../PAGES/login.php">Já tem uma conta? Entre!</a>
                    
                </div>
        </form>


   

</div>
<script>

document.getElementById('cpf').addEventListener('input', function (e) {
              let value = e.target.value.replace(/\D/g, ''); // Remove tudo que não é dígito
              if (value.length > 11) value = value.slice(0, 11); // Limita a 11 dígitos
              e.target.value = value.replace(/(\d{3})(\d)/, '$1.$2') // Adiciona o primeiro ponto
                                    .replace(/(\d{3})(\d)/, '$1.$2') // Adiciona o segundo ponto
                                    .replace(/(\d{3})(\d{1,2})$/, '$1-$2'); // Adiciona o hífen
            });

            document.getElementById('telefone').addEventListener('input', function (e) {
            let value = e.target.value.replace(/\D/g, ''); // Remove tudo que não é dígito
            if (value.length > 11) value = value.slice(0, 11); // Limita a 11 dígitos
            e.target.value = value.replace(/(\d{2})(\d)/, '($1) $2') // Adiciona parênteses e espaço
                                  .replace(/(\d{5})(\d)/, '$1-$2'); // Adiciona o hífen
             });




function verificaForm() {
	form = document.querySelector("#formAddCliente");
	var controle = 0;
	$("input:not([type=submit])").each(function (index, element) {
		if (element.value == "") {
			$(element).addClass("campoInvalido");
			controle++;
		} else {
			$(element).removeClass("campoInvalido");
		}

	})};


    function verificaPreenchimento(senha1, senha2) {
	if (senha1 != "" && senha2 != "" && senha1 === senha2) {
		return true;
	} else {
		alert("As senhas não conferem!");
		document.querySelector("#txtSenha1").focus();
		return false;
	}
}

function verificaSenha(senha1, senha2) {
	if (senha1 != "" && senha2 != "" && senha1 === senha2) {
		document.querySelector("#txtSenha1").classList.remove("campoInvalido");
		document.querySelector("#txtSenha2").classList.remove("campoInvalido");
		document.querySelector("#txtSenha1").classList.add("campoValido");
		document.querySelector("#txtSenha2").classList.add("campoValido");
	} else {
		document.querySelector("#txtSenha1").classList.add("campoInvalido");
		document.querySelector("#txtSenha2").classList.add("campoInvalido");
		document.querySelector("#txtSenha1").classList.remove("campoValido");
		document.querySelector("#txtSenha2").classList.remove("campoValido");
	}
}

    // Função para exibir a imagem de preview
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
