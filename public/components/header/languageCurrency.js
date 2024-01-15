let openMenus = [];

function closeAllMenus() {
  openMenus.forEach((openMenuId) => {
    const openMenu = document.getElementById(openMenuId);
    if (openMenu) {
      openMenu.classList.remove("open");
      setTimeout(() => {
        openMenu.style.display = "none";
      }, 50);
    }
  });
  openMenus = [];
}

function toggleMenu(menuId) {
  const menu = document.getElementById(menuId);

  if (menu) {
    const isOpen = menu.classList.contains("open");

    closeAllMenus();

    if (!isOpen) {
      menu.style.display = "block";
      openMenus.push(menuId);
      setTimeout(() => {
        menu.classList.add("open");
      }, 50);
    } else {
      menu.classList.remove("open");
      openMenus = openMenus.filter((openMenuId) => openMenuId !== menuId);
      setTimeout(() => {
        menu.style.display = "none";
      }, 50);
    }
  }
}

document.addEventListener("click", function (clickEvent) {
  if (
    clickEvent.target.classList.contains("open-menu") ||
    clickEvent.target.closest(".open-menu")
  ) {
    clickEvent.preventDefault();
    const menuId =
      clickEvent.target.id || clickEvent.target.closest(".open-menu").id;
    const menuElement = document.getElementById(menuId);
    if (menuElement) {
      toggleMenu(menuElement);
    }
  } else {
    closeAllMenus();
  }
});
