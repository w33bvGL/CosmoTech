var logoMedia = window.matchMedia("(max-width: 1024px)");

function changeImagePath() {
  let logo = document.getElementById("logo");

  if (logoMedia.matches) {
    logo.src = "assets/img/header/cosmoTech-s.png";
  } else {
    logo.src = "assets/img/header/cosmoTech.png";
  }
}

document.addEventListener("DOMContentLoaded", function () {
  changeImagePath();
});

window.onload = changeImagePath;
logoMedia.addListener(changeImagePath);
