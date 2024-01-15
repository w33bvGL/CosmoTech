function changeImagePath() {
  var logo = document.getElementById('logo');
  var windowWidth = window.innerWidth;
  var changeSize  = 1024; 
  if (windowWidth <= changeSize) {
    logo.src = 'assets/img/header/cosmoTech-s.png';
  } else {
    logo.src = 'assets/img/header/cosmoTech.png';
  }
}

window.onload = changeImagePath;
window.onresize = changeImagePath;