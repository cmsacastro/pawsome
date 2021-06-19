import 'tiny-slider/dist/tiny-slider.css'
import { tns } from 'tiny-slider/src/tiny-slider';

const initslider = () => {
  if (document.querySelector('.my-slider')) {
    tns({
      container: '.my-slider',
      items: 3,
      gutter: 10,
      swipeAngle: false,
      speed: 400,
      controlsContainer: '.controls',
      prevButton: '.prev',
      nextButton: '.next',
      navContainer: '.dots'
    });
  }
};

export { initslider };
