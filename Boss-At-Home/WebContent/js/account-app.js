const tl = gsap.timeline({ defaults: { ease: "power2.out" } });
var svg = document.querySelectorAll(".svg");
var bar = document.querySelectorAll("#bar");
const menuBars = document.getElementById("menu-bars");
const overlay = document.getElementById("overlay");


tl.to(".slider", { y: "-100%", duration: 2, ease: Power1.easeIn });
tl.to("nav", { opacity: 1, duration: 0.1 });
tl.to(".container", { opacity: 1, duration: 0.5 }, "-=0.5");
tl.to(".profile-container", { opacity: 1, duration: 0.5 }, "-=0.5");
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
        ".container",
        { x: "-5%", duration: 1, ease: Power3.easeInOut },
        "-=1"
      );
      TweenMax.to(
        ".profile-container",
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
        ".container",
        { x: "0%", duration: 1, ease: Power3.easeInOut },
        "-=1"
      );
      TweenMax.to(
        ".profile-container",
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


  
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// REGISTER FORM VALIDATION
const regForm = document.getElementById('register-form');
const message = document.getElementById('register-message');
const fname = document.getElementById('fname');
const lname = document.getElementById('lname');
const email = document.getElementById("reg-email");

const password = document.getElementById("reg-password");




function validateForm() {
    // Using Constraint API

    // style main message for an error

    if((fname.value.length === 0) || (lname.value.length === 0) || (email.value.length === 0) || (password.value.length === 0)) {
        message.textContent = 'Please fill out all fields.';
        message.style.color = "red";
        return false;
    }
    if(fname.value.length < 3) {
        message.textContent = 'First Name must contain minimum 3 characters.';
        message.style.color = "red";
        return false;
    }
    if(!isNaN(parseInt(fname.value))) {
      message.textContent = "So smart !! First Name can't contain number.";
      message.style.color = "red";
      return false;
    }
    if(!isNaN(parseInt(lname.value))) {
      message.textContent = "Very smart !! Last Name can't contain number.";
      message.style.color = "red";
      return false;
    }
    if(!/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email.value)) {
        message.textContent = 'Please enter a valid email.';
        message.style.color = "red";
        return false;
    }
    if(!/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/.test(password.value)) {
        message.textContent = 'Please include atleast 1 uppercase character, 1 lowercase character and 1 number.';
        message.style.color = "red";
        return false;
    }

    return true;
}

function processFormData(e) {
    // Validate Form
    // e.preventDefault();
    // validateForm();
    if(!validateForm()) {
        e.preventDefault();
    }
}


// Event Listener
regForm.addEventListener('submit', processFormData);


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// LOGIN FORM VALIDATION
const logForm = document.getElementById('login-form');
const logMessage = document.getElementById('login-message');
const logEmail = document.getElementById("log-email");
const logPassword = document.getElementById("log-password");

function validateLogForm() {
    // Using Constraint API

    // style main message for an error
    if((logEmail.value.length === 0) || (logPassword.value.length === 0)) {
        logMessage.textContent = 'Please fill out all fields.';
        logMessage.style.color = "red";
        return false;
    }
    if(logPassword.value.length < 8) {
        logMessage.textContent = 'Password must contain minimum 8 characters.';
        logMessage.style.color = "red";
        return false;
    }
    if(!/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(logEmail.value)) {
        logMessage.textContent = 'Invalid Email !!';
        logMessage.style.color = "red";
        return false;
    }

    return true;
}

function logFormData(e) {
    // Validate Form
    // e.preventDefault();
    // validateLogForm();
    if(!validateLogForm()) {
        e.preventDefault();
    }
}

// Event Listener
logForm.addEventListener('submit', logFormData);


// CHANGE PASSWORD TOGGLE
const forgotLink = document.getElementById('forgot-link');
const loginLink = document.getElementById('login-link');

function toggleLink() {
  forgotLink.classList.toggle('link-active');
  if(forgotLink.classList.contains('link-active')) {
    TweenMax.to('.change-password', { x: "0%", duration: 1, opacity: 1, ease: Power2.easeInOut });
    TweenMax.to('#login-form', { y: "100%", duration: 1,
    opacity: 0,
    ease: Power3.easeInOut });
  }else{
    TweenMax.to('.change-password', { x: "-100%", duration: 1,
    opacity: 0, ease: Power2.easeInOut });
    TweenMax.to('#login-form', { y: "0%", duration: 1,
    opacity: 1,
    ease: Power3.easeInOut });
  }
}
loginLink.addEventListener('click', toggleLink);
forgotLink.addEventListener('click', toggleLink);

