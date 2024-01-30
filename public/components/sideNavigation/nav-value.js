document.addEventListener("DOMContentLoaded", function () {
  const menuItems = document.querySelectorAll(".navigation-menus a");

  menuItems.forEach(function (menuItem) {
    menuItem.addEventListener("mouseenter", function () {
      const targetId = menuItem.getAttribute("data-target");
      const targetElement = document.getElementById(targetId);

      if (targetElement) {
        document.querySelectorAll(".nav-value-content").forEach(function (block) {
          block.style.display = "none";
        });
        targetElement.style.display = "flex";
      }
    });
  });
});
