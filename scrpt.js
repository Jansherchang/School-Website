const menuBtn = document.getElementById("menuBtn");
const navbar = document.getElementById("navbar");

menuBtn.addEventListener("click", function () {

  navbar.classList.toggle("active");

  if (navbar.classList.contains("active")) {
    menuBtn.innerHTML = "✖";
  } else {
    menuBtn.innerHTML = "☰";
  }

});