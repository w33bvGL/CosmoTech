function openNav() {
  const navValue = document.querySelector(".nav-value");
  const sideNav = document.getElementById("mySidenav");
  if (sideNav.style.width === "0px" || sideNav.style.width === "") {
    sideNav.style.width = "300px";
    document.body.style.overflow = "hidden";
    setTimeout(() => {
      navValue.style.display = "flex";
    }, 250);
  } else {
    closeNav();
    document.body.style.overflow = "auto";
    navValue.style.display = "none";
  }
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  const navValue = document.querySelector(".nav-value");
  document.body.style.overflow = "auto";
  navValue.style.display = "none";
}
