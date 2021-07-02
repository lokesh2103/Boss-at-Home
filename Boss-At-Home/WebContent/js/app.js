const tl = gsap.timeline({ defaults: { ease: "power2.out" } });
var svg = document.querySelectorAll(".svg");
var bar = document.querySelectorAll("#bar");
const menuBars = document.getElementById("menu-bars");
const overlay = document.getElementById("overlay");
var scroll = false;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// LANDING ANIMATIONS
tl.to(".text", {
  y: "0%",
  duration: 1.2,
  stagger: 0.4,
  ease: "back.out(2.7)",
  delay: 0.4,
});
tl.to(".slider", { y: "-100%", duration: 2, ease: Power2.easeOut });
tl.to(".intro", { y: "-100%", duration: 1.5, ease: Power2.easeOut }, "-=1.6");
tl.fromTo("nav", { opacity: 0 }, { opacity: 1, duration: 0.8 }, "-=1.2");
tl.to(
  ".landing-text",
  {
    y: "0%",
    duration: 1,
    stagger: 0.25,
    ease: Power2.easeOut,
  },
  "-=1"
);
tl.to(
  ".landing-button",
  {
    y: "0%",
    duration: 1,
    stagger: 0.25,
    ease: Power2.easeOut,
    delay: 1,
  },
  "-=1"
);
tl.to(
  ".right-slider",
  {
    x: "0%",
    duration: 1,
    ease: Power2.easeOut,
  },
  "-=1.3"
);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// SCROLLING EVENTS
window.addEventListener("scroll", function () {
  document.querySelector(".nav-slider").style.display = "block";
  let nav = document.querySelector("nav");
  scroll = nav.classList.toggle("scrolling-active", window.scrollY > 0);
  if (scroll) {
    TweenMax.to(".nav-slider", {
      y: "0%",
      duration: 0.5,
      ease: Power4.easeInOut,
    });
    document.querySelector(".logo a").style.color = "black";
    document.querySelector("#account-message").style.color = "black";
    
    for (let i = 0; i < svg.length; i++) {
      svg[i].style.filter = "invert(0%)";
      bar[i].style.backgroundColor = "black";
    }
  } else {
    TweenMax.to(".nav-slider", {
      y: "-100%",
      duration: 0.5,
      ease: Power4.easeInOut,
    });
    if (overlay.classList.contains("overlay-active")) {
      document.querySelector(".logo a").style.color = "whitesmoke";
      document.querySelector("#account-message").style.color = "black";
      for (let i = 0; i < svg.length; i++) {
        svg[i].style.filter = "invert(0%)";
        bar[i].style.backgroundColor = "black";
      }
    } else {
      document.querySelector(".logo a").style.color = "whitesmoke";
      document.querySelector("#account-message").style.color = "whitesmoke";
      
      for (let i = 0; i < svg.length; i++) {
        svg[i].style.filter = "invert(100%)";
        bar[i].style.backgroundColor = "whitesmoke";
      }
    }
  }
});

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// SLIDING MENU
function toggleNav() {
  menuBars.classList.toggle("change");
  overlay.classList.toggle("overlay-active");
  if (overlay.classList.contains("overlay-active")) {
    TweenMax.to(".overlay", { x: "0%", duration: 1, ease: Power3.easeInOut });
    TweenMax.to(
      ".logo",
      { x: "-15%", duration: 1, ease: Power3.easeInOut },
      "-=1"
    );
    TweenMax.to(
      ".landing-container",
      { x: "-5%", duration: 1, ease: Power3.easeInOut },
      "-=1"
    );
    TweenMax.to("#menu", {
      y: "0%",
      duration: 1.2,
      opacity: 1,
      stagger: 0.1,
      ease: Power4.easeInOut,
    });
    document.querySelector("#account-message").style.color = "black";
    for (let i = 0; i < svg.length; i++) {
      svg[i].style.filter = "invert(0%)";
      bar[i].style.backgroundColor = "black";
    }
  } else {
    TweenMax.to(".overlay", {
      x: "100%",
      duration: 1,
      ease: Power3.easeInOut,
    });
    TweenMax.to(
      ".logo",
      { x: "0%", duration: 1, ease: Power3.easeInOut },
      "-=1"
    );
    TweenMax.to(
      ".landing-container",
      { x: "0%", duration: 1, ease: Power3.easeInOut },
      "-=1"
    );
    TweenMax.to("#menu", {
      y: "100%",
      opacity: 0,
      duration: 0.8,
      ease: Power4.easeInOut,
      delay: 0.1,
    });
    if (scroll) {
      document.querySelector("#account-message").style.color = "black";
      
      for (let i = 0; i < svg.length; i++) {
        svg[i].style.filter = "invert(0%)";
        bar[i].style.backgroundColor = "black";
      }
    } else {
      document.querySelector("#account-message").style.color = "whitesmoke";
      
      for (let i = 0; i < svg.length; i++) {
        svg[i].style.filter = "invert(100%)";
        bar[i].style.backgroundColor = "white";
      }
    }
  }
}

menuBars.addEventListener("click", toggleNav);

// SEARCH ANIMATIONS
const search = document.getElementById('search');
const crossBar = document.getElementById('cross-bar');

function toggleSearch() {
  search.classList.toggle('search-overlay-active');
  if(search.classList.contains('search-overlay-active'))  {
    TweenMax.to('.search-overlay', { y: "0%" , duration: 1, ease: Power3.easeInOut });

  } else {
    TweenMax.to('.search-overlay', { y: "-100%" , duration: 1, ease: Power3.easeInOut });
  }
}

crossBar.addEventListener('click', toggleSearch);
search.addEventListener('click', toggleSearch);

//////////////////////////////////////////////////////////////////////////////

//////////////////// PRODUCTS SECTION

const productOverlay = document.querySelectorAll('.product-overlay');
const addToCartBtn = document.querySelectorAll('.add-to-cart');
const btnContainer = document.querySelectorAll('.btn-container');

for(let i = 0; i < productOverlay.length; i++) {
  productOverlay[i].addEventListener('mouseover', function() {   
    TweenMax.to(addToCartBtn[i], { y: "0%" , duration: 0.5, ease: Power3.easeInOut });
  });
  addToCartBtn[i].addEventListener('mouseover', function() {
    TweenMax.to(addToCartBtn[i], { y: "0%" , duration: 0.5, ease: Power3.easeInOut });
  });
  productOverlay[i].addEventListener('mouseout', function() {
    TweenMax.to(addToCartBtn[i], { y: "100%" , duration: 0.5, ease: Power3.easeInOut });
  });
  addToCartBtn[i].addEventListener('mouseout', function() {
    TweenMax.to(addToCartBtn[i], { y: "100%" , duration: 0.5, ease: Power3.easeInOut });
  });
}


// SCROLLING ANIMATION

const products = document.querySelectorAll(".product");
let delay = 200;
for (let i = 0; i < products.length; i++) {
  products[i].setAttribute("data-aos-delay", delay);
  products[i].setAttribute("data-aos","zoom-in-up");
  delay = delay + 200;
  if(delay > 800) {
    delay = delay - 600;
  }
}
