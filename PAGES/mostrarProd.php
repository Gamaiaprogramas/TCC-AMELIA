<?php 
@session_start();
include("../PARTIALS/header.php");
?>
<link rel="stylesheet" href="../STYLES/mostrarProds.css">
<main>

<?php
    $produto_cod = $_GET['cod'];
    // Consulta para obter os detalhes do produto com base no código do produto
    $query = "SELECT * FROM `produtos` WHERE codProduto = '$produto_cod'";
    $resultado = mysqli_query($con, $query);
    $CamisaU = mysqli_fetch_assoc($resultado);

    if (!$CamisaU) {
        echo "<p>Produto não encontrado.</p>";
        exit; // Encerra o script se não houver produto
    }
?>

<div class="Principal">
    <div class="MostrarImg">
        <img src="<?php echo $CamisaU['fotoProduto']; ?>" alt="">
    </div>
    <div class="MostrarSugest">
        <h1>Você também pode gostar!</h1>
        <div class="Camisa">
            <div class="espacoCamisa">
                <div class="espacoBtnEsquerda">
                    <button class="btnEsquerda" onclick="direcao(1)">
                        <i class="fa-solid fa-arrow-left fa-2xl"></i>
                    </button>
                </div>

                <div class="containerCamisa">
                <?php 
                $produtos = mysqli_query($con, "SELECT * FROM `produtos` WHERE regiao = 'brasil'");

                while ($produto = mysqli_fetch_assoc($produtos)) {
                    echo "<div class='containerCamisaUnico'>";
                    echo "  <div class='camisaDivimg'>";
                    echo "    <img src='{$produto['fotoProduto']}' alt=''>";
                    echo "    <h1>R$ {$produto['precoProduto']},00</h1>";
                    echo "  </div>";
                    echo "  <div class='camisaTexto'>";
                    echo "    <h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";
                    echo "    <button>Adicionar ao carrinho</button>";
                    echo "  </div>";
                    echo "</div>";
                }
                ?>
                </div>

                <div class="espacoBtnDireita">
                    <button class="btnDireita" onclick="direcao(2)">
                        <i class="fa-solid fa-arrow-right fa-2xl"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
function direcao(e) {
    var direcao = document.querySelector(".containerCamisa");
    if (e == 1) {
        direcao.scrollLeft -= 1550;
    } else if (e == 2) {
        direcao.scrollLeft += 1550;
    }
}
</script>

<div class="Lateral">
    <div class="textoIni"> 
        <h1><?php echo "{$CamisaU['nomeCamisa']} - {$CamisaU['timeProduto']}"; ?></h1>
        <h2>R$ <?php echo "{$CamisaU['precoProduto']}"; ?>,00</h2>
    </div>
    
    <form action="../ACTS/carrinho.act.php" method="POST" class="escolhaTamanho">
        <p>Selecione seu tamanho:</p>
        <div class="labels">
            <label for="size-pp"><input type="radio" name="size" value="PP" id="size-pp">PP</label>
            <label for="size-p"><input type="radio" name="size" value="P" id="size-p">P</label>
            <label for="size-m"><input type="radio" name="size" value="M" id="size-m">M</label>
            <label for="size-g"><input type="radio" name="size" value="G" id="size-g">G</label>
            <label for="size-gg"><input type="radio" name="size" value="GG" id="size-gg">GG</label>
            <label for="size-xgg"><input type="radio" name="size" value="XGG" id="size-xgg">XL</label>
        </div>

        <div class="carrinho">
            <input type="hidden" name="produto_cod" value="<?php echo $CamisaU['codProduto']; ?>">
            <input type="submit" value="ADICIONAR AO CARRINHO">
            <a href="../PAGES/carrinho.php"><button type="button">VER CARRINHO</button></a>
        </div>
    </form>
    
    <div class="descricao">
        <p><?php echo $CamisaU['infoProduto']; ?></p>
    </div>
</div>
</main>

<?php
include("../PARTIALS/footer.php");
?>
