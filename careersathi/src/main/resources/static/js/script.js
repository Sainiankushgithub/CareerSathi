// Active link highlighting based on scroll or click
document.querySelectorAll('.navbar-nav .nav-link').forEach(link => {
    link.addEventListener('click', function(e) {
        // Only prevent default for anchor links
        if (this.getAttribute('href').startsWith('#')) {
            e.preventDefault();
        }
        
        // Remove active class from all links
        document.querySelectorAll('.navbar-nav .nav-link').forEach(l => l.classList.remove('active'));
        // Add active class to clicked link
        this.classList.add('active');

        // Close mobile menu after clicking
        const navbarCollapse = document.querySelector('.navbar-collapse');
        if (navbarCollapse.classList.contains('show')) {
            new bootstrap.Collapse(navbarCollapse, { toggle: true });
        }
    });
});
// Prevent page jump on carousel slide
document.addEventListener('DOMContentLoaded', function() {
    const carousel = document.getElementById('carouselServices');
    if (carousel) {
        // Store scroll position before carousel changes
        let scrollPos = 0;
        carousel.addEventListener('slide.bs.carousel', function(e) {
            scrollPos = window.scrollY;
        });
        
        carousel.addEventListener('slid.bs.carousel', function(e) {
            // Restore scroll position after carousel change
            window.scrollY = scrollPos;
        });
    }

    // Intersection Observer for Scroll Animations
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.15
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                // Optional: stop observing once visible
                // observer.unobserve(entry.target); 
            }
        });
    }, observerOptions);

    // Select all sections to animate
    document.querySelectorAll('section').forEach(section => {
        observer.observe(section);
    });
});