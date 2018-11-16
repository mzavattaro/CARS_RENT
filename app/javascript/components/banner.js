import Typed from 'typed.js';

function loadDynamicBannerText() {
  const typedElement = document.getElementById('banner-typed-text')
  if (typedElement) {
    new Typed('#banner-typed-text', {
      strings: ["This is the place for cars"],
      typeSpeed: 50,
      loop: true
    });
  }
} 

export { loadDynamicBannerText };
