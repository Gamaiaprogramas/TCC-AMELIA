<?php
session_start();
extract($_POST);

// Verifica se o produto_cod e o tamanho foram enviados via POST
if (isset($_POST['produto_cod']) && isset($_POST['size'])) {
    $produto_cod = $_POST['produto_cod'];
    $tamanho = $_POST['size'];

    // Verifica se o carrinho já existe na sessão, se não, cria
    if (!isset($_SESSION['carrinho'])) {
        $_SESSION['carrinho'] = array();
    }

    // Verifica se a sessão de tamanhos já existe, se não, cria
    if (!isset($_SESSION['tamanhos'])) {
        $_SESSION['tamanhos'] = array();
    }

    // Adiciona o produto ao carrinho
    $_SESSION['carrinho'][] = $produto_cod;

    // Adiciona o tamanho correspondente ao mesmo índice do produto
    $_SESSION['tamanhos'][] = $tamanho;

    // Redireciona para a página onde o produto foi adicionado
    header('Location: ../PAGES/carrinho.php?cod=' . $produto_cod);
    exit;
} else {
    echo "Código do produto ou tamanho não especificado.";
}
?>
