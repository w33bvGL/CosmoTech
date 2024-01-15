document.addEventListener("DOMContentLoaded", function () {
  let currentSlide = 0;
  const totalSlides = document.querySelectorAll(".el-sl-c").length;
  const slider = document.getElementById("slider");

  function updateSlider() {
    const newTransformValue = -currentSlide * 100 + "%";
    slider.querySelector(".el-slider-inner").style.transform =
      "translateX(" + newTransformValue + ")";
  }

 function nextSlide() {
    if (currentSlide < totalSlides - 1) {
      currentSlide++;
    } else {
      currentSlide = 0;
    }
    updateSlider();
  }

  function prevSlide() {
    if (currentSlide > 0) {
      currentSlide--;
    } else {
      currentSlide = totalSlides - 1;
    }
    updateSlider();
  }
});
