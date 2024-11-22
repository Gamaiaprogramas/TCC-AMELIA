let currentSlide = 0;

function autoSlide() {
    const slides = document.querySelectorAll(".slide");
    const totalSlides = slides.length;

    currentSlide = (currentSlide + 1) % totalSlides;

    const carouselContent = document.querySelector(".carousel-content");
    carouselContent.style.transform = `translateX(-${currentSlide * 100}%)`;
}

// Muda de slide a cada 3 segundos
setInterval(autoSlide, 3000);
