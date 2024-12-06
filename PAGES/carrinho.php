<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho de Compras</title>
    <link rel="stylesheet" href="../STYLES/carrinho.css"> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../PICS/imgsMantos/logoPequena.svg" type="image/x-icon"><!-- Usando o mesmo CSS da pesquisa -->
</head>
<body>
    <div class="carrinhoDiv">

        <nav>
            <a href="../PAGES/inicio.php"><img src="../PICS/imgsMantos/logoAlternativa.svg" alt=""></a>
            <h2>Carrinho de compras!</h2>
            <?php 
             session_start();
            echo "<a href='../PAGES/perfil.php' ><img src='$_SESSION[foto]'></a>";
            ?>
        </nav>

        <?php 

        require('../ACTS/connect.php');

        if (isset($_SESSION['carrinho']) && !empty($_SESSION['carrinho'])) {
            foreach ($_SESSION['carrinho'] as $index => $produto_cod) {  // Utiliza o índice do array
                $tamanho = isset($_SESSION['tamanhos'][$index]) ? $_SESSION['tamanhos'][$index] : 'Tamanho não especificado'; // Obtém o tamanho correspondente
                
                $query = "SELECT * FROM `produtos` WHERE codProduto = '$produto_cod'";
                $resultado = mysqli_query($con, $query);

                if (mysqli_num_rows($resultado) == 1) {
                    $produto = mysqli_fetch_assoc($resultado);

                    echo "<div class='containerReal'>";  // Usando a mesma estrutura da página de pesquisa
                    echo "    <div class='container'>";   // Contêiner para manter o layout
                    echo "        <img src='{$produto['fotoProduto']}' alt='{$produto['nomeCamisa']}'>";  // Exibe a imagem do produto
                    echo "        <div>";
                    echo "            <h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";  // Nome e time do produto
                    echo "            <h2>R$ {$produto['precoProduto']},00</h2>";  // Preço do produto
                    echo "            <p>Tamanho Selecionado: $tamanho</p>"; 
              
                    echo "            <a href='../ACTS/excluirCarrinho.php?cod=$produto_cod'><button>Excluir do carrinho</button></a>";  // Link para excluir
                    // Logo do time
                    echo "        </div>";
                    echo "    </div>";
                    echo "</div>";  // Fecha o containerReal
                }
            }
            echo "<div class ='compra'>";
            echo "<a href='../PAGES/finalizarCompra.php'><button>Finalizar Compra</button></a>";
        } else {
            echo "<p>Seu carrinho está vazio.</p>";
        }
        ?>

        <a href="../PAGES/inicio.php"><p>Continuar comprando</p></a>
    </div>
    </div>
</body>
</html>
