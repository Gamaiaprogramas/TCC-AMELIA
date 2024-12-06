// Função de navegação já implementada
function direcao(carouselId, direcao) {
    const container = document.getElementById(carouselId);
    const scrollAmount = container.offsetWidth;

    if (direcao === 1) {
        container.scrollBy({ left: -scrollAmount, behavior: "smooth" });
    } else if (direcao === 2) {
        container.scrollBy({ left: scrollAmount, behavior: "smooth" });
    }
}

// Atualização no carrossel automático para incluir o Femininas
let currentSlideMasculinas = 0;
let currentSlideFemininas = 0;

function autoSlide(carouselId, currentSlideVar) {
    const container = document.getElementById(carouselId);
    const totalSlides = container.children.length;
    const slideWidth = container.offsetWidth;

    currentSlideVar = (currentSlideVar + 1) % totalSlides;
    container.scrollTo({ left: currentSlideVar * slideWidth, behavior: "smooth" });

    return currentSlideVar;
}

// Iniciar carrosséis automáticos
setInterval(() => {
    currentSlideMasculinas = autoSlide("carouselMasculinas", currentSlideMasculinas);
    currentSlideFemininas = autoSlide("carouselFemininas", currentSlideFemininas);
}, 3000);
