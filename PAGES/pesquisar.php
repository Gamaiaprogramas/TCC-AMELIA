<?php 
include('../partials/header.php'); 
@session_start();
if (isset($_SESSION['msg'])) {
    echo $_SESSION['msg'];
    unset($_SESSION['msg']);
}
require('../ACTS/connect.php');
?>
<link rel="stylesheet" href="../STYLES/pesquisa.css">

<?php
if(isset($_GET['termo'])) {

    $termo = $_GET['termo'];
    
    $query = "SELECT * FROM `produtos` WHERE nomeCamisa LIKE '%$termo%' OR timeProduto LIKE '%$termo%'";
    $resultado = mysqli_query($con, $query);

    if (mysqli_num_rows($resultado) > 0) {
        while ($produto = mysqli_fetch_assoc($resultado)) {
            $descricao_previa = strlen($produto['infoProduto']) > 80 ? substr($produto['infoProduto'], 0, 80) . '...' : $produto['infoProduto'];

            echo "<div class='containerReal'>";
            echo "    <a href='../PAGES/mostrarProd.php?cod={$produto['codProduto']}'>";
            echo "        <div class='container'>";
            echo "            <img src='{$produto['fotoProduto']}' alt=''>";
            echo "            <div>";
            echo "                <h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";
            echo "                <h2>R$ {$produto['precoProduto']},00</h2>";
            echo "                <p>$descricao_previa</p>";
            echo "            </div>";
            echo "        </div>";
            echo "    </a>";
            echo "</div>"; 
        }
    } else {
        echo "<div class='nãoAchado'>";
        echo "    <img src='../PICS/imgsMantos/triste.webp'>";
        echo "    <p>Nenhum produto encontrado.</p>";
        echo "</div>";
    }
}
include("../PARTIALS/footer.php");
?>
