<?php 
    @session_start();
    include("../partials/header.php");


    if ($con->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    @session_start();

?>
    <link rel="stylesheet" href="../STYLES/perfil.css">

    <div class="main-Perfil">
        <div class="titulo">
            <h1>Seu <a>perfil</a> no Mantos!</h1> 
        </div>
        <div class="conteudo">
            <div class="esquerda">
                <div class="fotoUsuario">
                    <?php echo "<img src='$_SESSION[foto]' class='miniaturaPerf'>"; ?>
                </div>
            </div>
            <div class="direita">
                <div class="nomes">Nome: 
                    <div class="phps">
                        <?php echo "$_SESSION[nome]"; ?>
                    </div>
                </div>
                    
                <div class="nomes">E-mail: 
                    <div class="phps">
                    <?php echo "$_SESSION[email]"; ?>
                    </div>
                </div>
                <div class="nomes">CPF: 
                    <div class="phps">
                        <?php echo "$_SESSION[cpf]"; ?>
                    </div>
                </div>
                <div class="nomes">Telefone: 
                    <div class="phps">
                        <?php echo "$_SESSION[telefone]"; ?>
                    </div>
                </div>
                <div class="nomes">Nascimento:
                    <div class="phps">
                    <?php echo "$_SESSION[nascto]"; ?>
                    </div>
                </div>
                <div class="nomes">Gênero: 
                    <div class="phps">
                    <?php if($_SESSION['sexo'] == "opcao1"){
                        echo "Masculino";
                    }else if($_SESSION['sexo'] == "opcao2"){
                        echo "Feminino";
                    }; ?>
                    </div>
                </div>

                <!-- Botão Editar -->
                <div class="editar">
                    <div class="btnEdit">
                        <a href="../PAGES/edit.php?codigo= echo $_SESSION['codigo']; ?>">Editar perfil</a>
                    </div>
                </div>
                
                    <div class="btnAnalise">
                        <a href="../PAGES/adicaoSaldo.php">Meus pedidos!</a>
                    </div>
                    <div class="btnAnalise">
                        <a href="../PAGES/dashboard.php" >Excluir conta</a>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>