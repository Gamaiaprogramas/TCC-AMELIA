<?php
    @session_start();
    include("../PARTIALS/header.php");
?>
<link rel="stylesheet" href="../STYLES/produtos.css">
<body>   

<main>
    <div class="primeiroBanner">
        <div class="divConteudoConteudo">
            <h1>A MELHOR LOJA DE <a>CAMISAS</a> DE TIME!</h1>
            <h2>Compre produtos com qualidade, rapidez e segurança.</h2>
        </div>
    </div>

    <!-- Carrossel -->
    <div class="carousel-container" id="carousel">
        <button class="carousel-btn prev">❮</button>
        <div class="carousel">
            <!-- Adicionando todas as imagens em um único carrossel -->
            <div class="carousel-item">
                <img src="../PICS/fotos/flamengo.png" alt="Imagem 1">
            </div>
            <div class="carousel-item">
                <img src="../PICS/fotos/gayvota.webp" alt="Imagem 1">
            </div>
        </div>
        <button class="carousel-btn next">❯</button>
    </div>
</main>

<script>
    document.addEventListener('DOMContentLoaded', function () {
    const prevBtn = document.querySelector('.carousel-btn.prev');
    const nextBtn = document.querySelector('.carousel-btn.next');
    const carousel = document.querySelector('.carousel');

    let currentIndex = 0;  // Garantir que o índice começa em 0
    const totalItems = carousel.querySelectorAll('.carousel-item').length;

    // Função para atualizar a posição do carrossel
    function updateCarousel() {
        carousel.style.transform = `translateX(-${currentIndex * 100}%)`;
    }

    // Atualiza o carrossel ao carregar a página
    updateCarousel();

    // Lógica de navegação para a esquerda
    prevBtn.addEventListener('click', function () {
        currentIndex = (currentIndex - 1 + totalItems) % totalItems;
        updateCarousel();
        resetAutoPlay();
    });

    // Lógica de navegação para a direita
    nextBtn.addEventListener('click', function () {
        currentIndex = (currentIndex + 1) % totalItems;
        updateCarousel();
        resetAutoPlay();
    });

    // Função de autoplay
    let autoplayInterval;

    function startAutoPlay() {
        if (totalItems > 1) {
            autoplayInterval = setInterval(function () {
                currentIndex = (currentIndex + 1) % totalItems;
                updateCarousel();
            }, 6000);  // Intervalo de 6 segundos
        }
    }

    // Reinicia o autoplay
    function resetAutoPlay() {
        clearInterval(autoplayInterval);
        startAutoPlay();
    }

    // Inicia o autoplay
    startAutoPlay();
});

</script>

<?php include("../PARTIALS/footer.php"); ?>

</body>
</html>
