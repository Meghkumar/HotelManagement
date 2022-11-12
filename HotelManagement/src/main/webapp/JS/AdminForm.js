// --------------------------------------------------------------
//     Terms and condition
// --------------------------------------------------------------

var features = "height=600,width=600";
let url = "/HTML/Terms&Condition.html";
let link = document.getElementById("terms");
link.addEventListener("click", function () {
  window.open(url, "Terms&Condition", features);
});

// --------------------------------------------------------------
//     Form validation
// --------------------------------------------------------------
let username = document.getElementById("username");
let password = document.getElementById("password");
let checkbox = document.getElementById("checkBox");
let flag = 1;

function validateForm() {
  if (username.value == "") {
    document.getElementById("usererror").innerHTML = "User Name is Empty";
    flag = 0;
  } else if (username.value.length < 3) {
    document.getElementById("usererror").innerHTML = "User Name should be of Min 3 Char";
    flag = 0;
  } else {
    document.getElementById("usererror").innerHTML = "";
    flag = 1;
  }

  // For password Validation
  if (password.value == "") {
    document.getElementById("passworderror").innerHTML = "Password is Empty";
    flag = 0;
  } else if (password.value.length < 8) {
    document.getElementById("passworderror").innerHTML =
      "Password length must be atleast 8 characters";
    flag = 0;
  } else if (password.value.length > 15) {
    document.getElementById("passworderror").innerHTML =
      "Password length must not exceed 15 characters";
    flag = 0;
  } else {
    document.getElementById("passworderror").innerHTML = "";
    flag = 1;
  }

  // For checkBox Validation
  if (checkbox.checked) {
    document.getElementById("checkboxerror").innerHTML = "";
    flag = 0;
  } else {
    document.getElementById("checkboxerror").innerHTML = "Please except the terms and Conditon";
    flag = 1;
  }

  if (flag == 1) {
    return true;
  } else {
    return false;
  }
  return true;
}
