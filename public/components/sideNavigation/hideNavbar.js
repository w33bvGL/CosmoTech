var hideNavbar = window.matchMedia("(min-width: 769px)");

function closeNavigationBar() {
  let logo = document.getElementById("mySidenav");
  let navValue = document.getElementById("nav-value");

  if (hideNavbar.matches) {
    logo.style.display = "flex";
    if (logo.style.display == "flex") {
      navValue.style.display = "none";
    }
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
