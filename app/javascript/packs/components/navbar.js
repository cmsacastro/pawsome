const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-transparent');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 56) {
        navbar.classList.add('navbar-white');
      } else {
        navbar.classList.remove('navbar-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
