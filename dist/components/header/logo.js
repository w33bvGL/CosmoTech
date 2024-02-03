var logoMedia = window.matchMedia("(max-width: 1024px)");

function changeImagePath() {
  let logo = document.getElementById("logo");

  if (logoMedia.matches) {
    logo.src = "assets/cosmo-small.webp";
  } else {
    logo.src = "assets/cosmo-dark.webp";
  }
}
window.addEventListener("load", function () {
  changeImagePath();
});

logoMedia.addListener(changeImagePath);
