// Navbar scroll
var nav = document.querySelector("nav");
var text = document.getElementById("navtext");
window.addEventListener("scroll", function () {
  if (this.window.pageYOffset > 500) {
    nav.classList.add("bg-dark", "shadow");
  } else {
    nav.classList.remove("bg-dark", "shadow");
  }
});
// Navbar scroll end

