var hideNavbar = window.matchMedia("(min-width: 768px)");

function closeNavigationBar() {
  let logo = document.getElementById("mySidenav");
  let navValue = document.getElementById("nav-value");

  if (hideNavbar.matches) {
    logo.style.display = "flex";
    navValue.style.display = "flex";
  } else {
    logo.style.display = "none";
    navValue.style.display = "none";
  }
}

document.addEventListener("DOMContentLoaded", function () {
  closeNavigationBar();
});

window.onload = closeNavigationBar;
hideNavbar.addListener(closeNavigationBar);
