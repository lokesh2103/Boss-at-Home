// PROFILE FORM VALIDATION

const proForm = document.getElementById('profile-form');
const proMessage = document.getElementById('pro-message');
const proFname = document.getElementById('pro-fname');
const proLname = document.getElementById('pro-lname');
const proEmail = document.getElementById("pro-email");
const proPassword = document.getElementById("pro-password");
const mobile = document.getElementById("mobile");
const area = document.getElementById("area");
const city = document.getElementById("city");
const state = document.getElementById("state");



function validateProForm() {
  if((proFname.value.length === 0) || (proLname.value.length === 0) || (proEmail.value.length === 0) || (proPassword.value.length === 0) || (mobile.value.length === 0) || (area.value.length === 0) || (city.value.length === 0) || (state.value.length === 0)) {
    proMessage.textContent = 'Please fill out all fields.';
    proMessage.style.color = "red";
    return false;
  }
  if(proFname.value.length < 3) {
    proMessage.textContent = 'First Name must contain minimum 3 characters.';
    proMessage.style.color = "red";
    return false;
  }

  if(!isNaN(parseInt(proFname.value))) {
    proMessage.textContent = "So smart !! First Name can't contain number.";
    proMessage.style.color = "red";
    return false;
  }
  if(!isNaN(parseInt(proLname.value))) {
    proMessage.textContent = "Very smart !! Last Name can't contain number.";
    proMessage.style.color = "red";
    return false;
  }
  
  if(!/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(proEmail.value)) {
    proMessage.textContent = 'Please enter a valid email.';
    proMessage.style.color = "red";
    return false;
  }

  if(!/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/.test(proPassword.value)) {
    proMessage.textContent = 'Please include atleast 1 uppercase character, 1 lowercase character and 1 number.';
    proMessage.style.color = "red";
    return false;
  }

  if(isNaN(parseInt(mobile.value)) || mobile.value.length < 10) {
    proMessage.textContent = "Invalid Mobile Number !! Please Enter a valid mobile number.";
    proMessage.style.color = "red";
    return false;
  }

  if(!isNaN(parseInt(area.value))) {
    proMessage.textContent = "Very smart !! Area can't contain numbers.";
    proMessage.style.color = "red";
    return false;
  }

  if(!isNaN(parseInt(state.value))) {
    proMessage.textContent = "Very smart !! State can't contain numbers.";
    proMessage.style.color = "red";
    return false;
  }

  return true;
}

function proFormData(e) {
    // Validate Form
    // e.preventDefault();
    // validateProForm();
    if(!validateProForm()) {
      e.preventDefault();
    }
}


// Event Listener
proForm.addEventListener('submit', proFormData);

