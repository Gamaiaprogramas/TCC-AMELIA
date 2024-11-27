let currentSlide = 0;

function autoSlide() {
    const slides = document.querySelectorAll(".slide");
    const totalSlides = slides.length;

    currentSlide = (currentSlide + 1) % totalSlides;

    const carouselContent = document.querySelector(".carousel-content");
    carouselContent.style.transform = `translateX(-${currentSlide * 100}%)`;
}

// Iniciar o carrossel automaticamente
setInterval(autoSlide, 3000); // Tempo entre slides (3 segundos)
