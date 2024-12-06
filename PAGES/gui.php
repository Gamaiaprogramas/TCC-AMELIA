<?php
session_start();
require('../ACTS/connect.php');
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seus Pedidos</title>
    <link rel="stylesheet" href="../STYLES/pedidos.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../PICS/imgsMantos/logoPequena.svg" type="image/x-icon">

</head>

<body>
    <div class="carrinhoDiv">
        <nav>
            <a href="../PAGES/inicio.php"><img src="../PICS/imgsMantos/logoAlternativa.svg" alt=""></a>
            <h2>Seus Pedidos</h2>
            <?php
            echo "<a href='../PAGES/perfil.php'><img src='{$_SESSION['foto']}'></a>";
            ?>
        </nav>

        <!-- Carrossel de Pedidos -->
        <div class="carousel-container">
    <button class="carousel-btn prev">❮</button>
    <div class="carousel">
        <?php
        if (isset($_SESSION['codigo'])) {
            $usuario_cod = $_SESSION['codigo'];
            // Depuração: verifique se o código do usuário está correto
            echo "Código do usuário: $usuario_cod";  // Verifique se o código está correto

            // Consulta para obter os pedidos do usuário
            $query = "SELECT * FROM `pedidos` WHERE clientePedido = '$usuario_cod'";
            $resultado = mysqli_query($con, $query);

            // Verifique se a consulta retornou algum pedido
            if (mysqli_num_rows($resultado) > 0) {
                while ($pedido = mysqli_fetch_assoc($resultado)) {
                    echo "<div class='carousel-item'>";
                    echo "<div class='pedido'>";
                    echo "<h3>Pedido Número: {$pedido['numeroPedido']}</h3>";
                    echo "<p><strong>Data:</strong> {$pedido['dataPedido']}</p>";

                    // Converter códigos dos itens para nomes e imagens
                    $itens = explode(", ", $pedido['itensPedido']);
                    $nomesItens = [];
                    $imagensItens = [];
                    foreach ($itens as $codItem) {
                        $queryProduto = "SELECT nomeCamisa, fotoProduto FROM `produtos` WHERE codProduto = '$codItem'";
                        $resultadoProduto = mysqli_query($con, $queryProduto);
                        if (mysqli_num_rows($resultadoProduto) == 1) {
                            $produto = mysqli_fetch_assoc($resultadoProduto);
                            $nomesItens[] = $produto['nomeCamisa'];
                            $imagensItens[] = $produto['fotoProduto'];
                        } else {
                            $nomesItens[] = "Item Desconhecido (Código: $codItem)";
                            $imagensItens[] = "../PICS/imgsMantos/placeholder.png"; // Imagem padrão caso o item não seja encontrado
                        }
                    }
                    $nomesItensStr = implode(", ", $nomesItens);

                    echo "<p><strong>Itens:</strong> $nomesItensStr</p>";
                    echo "<p><strong>Total:</strong> R$ {$pedido['precoPedido']}</p>";

                    // Exibir imagens dos itens
                    echo "<div class='imagens-produtos'>";
                    foreach ($imagensItens as $imagem) {
                        echo "<img src='$imagem' alt='Imagem do Produto'>";
                    }
                    echo "</div>";

                    echo "</div>"; // Fechar div.pedido
                    echo "</div>"; // Fechar div.carousel-item
                }
            } else {
                echo "<div class='carousel-item'><p>Você não tem pedidos.</p></div>";
            }
        }
        ?>
    </div>
    <button class="carousel-btn next">❯</button>
</div>

<a href="../PAGES/inicio.php"><p>Continuar comprando</p></a>

    </div>

    <!-- Script do Carrossel -->
    <script>
      document.addEventListener("DOMContentLoaded", function() {
    const prevButton = document.querySelector(".prev");
    const nextButton = document.querySelector(".next");
    const carousel = document.querySelector(".carousel");
    const totalItems = document.querySelectorAll(".carousel-item").length;

    let currentIndex = 0;

    // Função para mover o carrossel
    function moveCarousel() {
        const offset = -currentIndex * 100;  // Calcula o deslocamento baseado no índice atual
        carousel.style.transform = `translateX(${offset}%)`;  // Aplica a transformação para mover
    }

    // Evento de clique no botão "próximo"
    nextButton.addEventListener("click", function() {
        if (currentIndex < totalItems - 1) {
            currentIndex++;
        } else {
            currentIndex = 0;  // Voltar ao primeiro item se chegar no final
        }
        moveCarousel();
    });

    // Evento de clique no botão "anterior"
    prevButton.addEventListener("click", function() {
        if (currentIndex > 0) {
            currentIndex--;
        } else {
            currentIndex = totalItems - 1;  // Voltar ao último item se chegar no começo
        }
        moveCarousel();
    });
});

    </script>

</body>

</html>
