function openNav() {
  const sideNav = document.getElementById("mySidenav");

  if (sideNav.style.width === "0px" || sideNav.style.width === "") {
    
    sideNav.style.width = "300px";
    document.body.style.overflow = "hidden";
  } else {
    closeNav();
    document.body.style.overflow = "auto";
  }
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.body.style.overflow = "auto";
}