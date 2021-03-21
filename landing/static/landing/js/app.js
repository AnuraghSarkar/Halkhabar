const button = document.querySelector(".myBtn");

button.addEventListener('click',fadeOut);

document.querySelector('body').addEventListener(onload, preventDefault())


function fadeOut() {

    TweenMax.to(".myBtn", 1, {
             y: -100,
             opacity: 0
        });
   
    TweenMax.to(".screen", 2, {
             y: -400,
             opacity: 0,
             ease: Power2.easeInOut,
             delay: 0.7
        });
   
    TweenMax.from(".overlay", 2, {
             ease: Power2.easeInOut
        });
   
    TweenMax.to(".overlay", 2, {
             delay: 1.5,
             top: "-110%",
             ease: Expo.easeInOut
        });
   
    TweenMax.to(".overlay-2", 2, {
             delay: 1.8,
             top: "-110%",
             ease: Expo.easeInOut
        });
   
    TweenMax.from(".content", 2, {
             delay: 2,
             opacity: 0,
             ease: Power2.easeInOut
        });
   
    TweenMax.to(".content", 2, {
             opacity: 1,
             y: -300,
             delay: 2,
             ease: Power2.easeInOut
    });
   
}

const cursor = document.querySelector('.cursor');
const cursorInner = document.querySelector('.cursor-move-inner');
const cursorOuter = document.querySelector('.cursor-move-outer');

const trigger = document.querySelector('button');

let mouseX = 0;
let mouseY = 0;
let mouseA = 0;

let innerX = 0;
let innerY = 0;

let outerX = 0;
let outerY = 0;

let loop = null;

document.addEventListener('mousemove', (e) => {
  mouseX = e.clientX;
  mouseY = e.clientY;
  
  if (!loop) {
    loop = window.requestAnimationFrame(render);
  }
});

trigger.addEventListener('mouseenter', () => {
  cursor.classList.add('cursor--hover');
});

trigger.addEventListener('mouseleave', () => {
  cursor.classList.remove('cursor--hover');
});

function render() {
  // stats.begin();

  loop = null;
  
  innerX = lerp(innerX, mouseX, 0.15);
  innerY = lerp(innerY, mouseY, 0.15);
  
  outerX = lerp(outerX, mouseX, 0.13);
  outerY = lerp(outerY, mouseY, 0.13);
  
  const angle = Math.atan2(mouseY - outerY, mouseX - outerX) * 180 / Math.PI;
  
  const normalX = Math.min(Math.floor((Math.abs(mouseX - outerX) / outerX) * 1000) / 1000, 1);
  const normalY = Math.min(Math.floor((Math.abs(mouseY - outerY) / outerY) * 1000) / 1000, 1);
  const normal  = normalX + normalY * .5;
  const skwish  = normal * .7;
    
  cursorInner.style.transform = `translate3d(${innerX}px, ${innerY}px, 0)`;
  cursorOuter.style.transform = `translate3d(${outerX}px, ${outerY}px, 0) rotate(${angle}deg) scale(${1 + skwish}, ${1 - skwish})`;
  
  // stats.end();
  
  // Stop loop if interpolation is done.
  if (normal !== 0) {
    loop = window.requestAnimationFrame(render);
  }
}

function lerp(s, e, t) {
  return (1 - t) * s + t * e;
}


