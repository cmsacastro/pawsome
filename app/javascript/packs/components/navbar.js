const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-transparent');
  const navbar2 = document.querySelector('.navbar-white-none');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 56) {
        navbar.classList.add('navbar-white');
      } else {
        navbar.classList.remove('navbar-white');
      }
    });
  }
  if (navbar2) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 56) {
        navbar2.classList.add('navbar-white');
      } else {
        navbar2.classList.remove('navbar-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
