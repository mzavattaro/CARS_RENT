import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["This is the place for cars"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };