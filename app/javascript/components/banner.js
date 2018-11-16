import Typed from 'typed.js';
const typedElement = document.getElementById('banner-typed-text')

if (typedElement) {
  function loadDynamicBannerText() {
    new Typed('#banner-typed-text', {
      strings: ["This is the place for cars"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
