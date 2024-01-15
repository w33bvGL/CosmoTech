<template>
  <section class="elementor">
    <div class="elementor-inner">
      <div class="elementor-title">
        <div class="el-title-big elementor-el">
          <!-- slider Start -->
          <div class="swiper-container">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="sw-cont">
                  <h2 class="sw-model-name">GEAR 360</h2>
                  <h2 class="sw-model-title">Wireless Earbuds</h2>
                  <p class="sw-model-description">
                    Top quality earbuds & accessories
                  </p>
                  <button class="sw-model-button">discover Now</button>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="sw-cont">
                  <h2 class="sw-model-name">GEAR 360</h2>
                  <h2 class="sw-model-title">Wireless Earbuds</h2>
                  <p class="sw-model-description">
                    Top quality earbuds & accessories
                  </p>
                  <div class="sw-model-button">discover Now</div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="sw-cont">
                  <h2 class="sw-model-name">GEAR 360</h2>
                  <h2 class="sw-model-title">Wireless Earbuds</h2>
                  <p class="sw-model-description">
                    Top quality earbuds & accessories
                  </p>
                  <div class="sw-model-button">discover Now</div>
                </div>
              </div>
            </div>
            <div class="swiper-button-next slider-button"></div>
            <div class="swiper-button-prev slider-button"></div>
          </div>
          <!-- slider sliderEnd -->
        </div>
        <div class="el-title-2 elementor-el">
          <div class="title-2-el-content">
            <div class="background-el"></div>
            <div class="el-banner-cont">
              <h2 class="el-banner-name">
                New Style <br />
                Bluetooh Speaker
              </h2>
              <p class="el-banner-description">Free Shipping 20km</p>
            </div>
          </div>
          <div class="title-2-el-content">
            <div class="background-el"></div>
            <div class="el-banner-cont">
              <h2 class="el-banner-name">
                Limited <br />
                Top Camera
              </h2>
              <p class="el-banner-description">Top Quality Products</p>
            </div>
          </div>
        </div>
        <div class="el-title-1 elementor-el">
          <div class="background-el"></div>
          <div class="el-banner-cont">
            <div class="names">
              <h3 class="el-banner-name">Xbox Wireless</h3>
              <h2 class="el-banner-title">Sale Up To 50% Off</h2>
            </div>
            <button class="el-banner-button">Shop now</button>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      data: [],
    };
  },
  methods: {
    fetchData() {
      axios
        .get("@/components/")
        .then((response) => {
          this.data = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
  },
  /* eslint-disable */
  mounted() {
    const swiper = new Swiper(".swiper-container", {
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  },
};
/* eslint-enable */
</script>

<style scoped lang="scss">
.swiper-container {
  width: 100%;
  height: 100%;
  color: var(--color-white);

  .swiper-slide {
    width: 100%;
    height: 100%;
    background-repeat: no-repeat;
    background-size: cover;

    .sw-cont {
      width: 100%;
      padding: 50px;
      height: 100%;
      display: flex;
      flex-direction: column;
      gap: 20px;
      justify-content: center;

      .sw-model-name {
        text-transform: uppercase;
        letter-spacing: 0px;
        line-height: 40px;
        font-size: 40px;
        color: #ffffff;
        font-weight: 100;
        font-family: "roboto" !important;
      }

      .sw-model-title {
        text-transform: uppercase;
        letter-spacing: 0px;
        line-height: 40px;
        font-size: 50px;
        color: #ffffff;
        font-weight: 400;
        font-family: "roboto" !important;
      }
      .sw-model-description {
        font-size: 18px;
        font-weight: 500;
        font-family: "roboto" !important;
      }

      .sw-model-button {
        padding: 15px 0;
        border-radius: 5px;
        text-transform: uppercase;
        font-size: 12px;
        font-weight: bold;
        letter-spacing: 1px;
        width: 150px;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: var(--sw-model-button-background-color);
        cursor: pointer;
        border: none;
        color: var(--color-white);
        transition: 0.2s;

        &:hover {
          background-color: var(--sw-model-button-hov);
        }
      }
    }
  }
  .swiper-slide:nth-child(1) {
    background-image: url("../../../public/assets/img/title/slide3.webp");
  }
  .swiper-slide:nth-child(2) {
    background-image: url("../../../public/assets/img/title/slide2.webp");
  }
  .swiper-slide:nth-child(3) {
    background-image: url("../../../public/assets/img/title/slide1.webp");
  }
}

.elementor {
  background-color: var(--elementor-background-color);
  width: 100%;
  padding: 40px 0px;

  .elementor-inner {
    width: 100%;
    padding: 0 10px;
  }

  .elementor-title {
    max-width: 1800px;
    margin: 0 auto;
    width: 100%;
    height: 500px;
    display: flex;
    gap: 20px;

    .elementor-el {
      height: 500px;
      display: block;
    }

    .el-title-big {
      width: 60%;
      position: relative;
      overflow: hidden;
    }

    .el-title-1 {
      width: 20%;
      background-image: transparent;
      position: relative;
      overflow: hidden;

      &:hover .background-el {
        transform: scale(1.1);
      }

      .el-banner-cont {
        padding: 50px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        height: 100%;
        gap: 10px;
        color: var(--color-white);
        z-index: 2;
        position: relative;
        overflow: hidden;

        .names {
          display: flex;
          flex-direction: column;
          width: 100%;
          margin-top: 30px;
          justify-content: flex-start;
          align-items: center;

          .el-banner-name {
            font-size: 17px;
            font-weight: 300;
            margin-bottom: 10px;
          }

          .el-banner-title {
            font-size: 25px;
            font-weight: 300;
          }
        }

        .el-banner-button {
          padding: 8px 15px;
          background-color: transparent;
          border: 2px solid var(--color-white);
          color: var(--color-white);
          font-size: 15px;
          font-weight: 500;
          letter-spacing: 1px;
          border-radius: 4px;
          cursor: pointer;
          transition: 0.2s;

          &:hover {
            background-color: var(--color-white);
            color: var(--color-222222);
          }
        }
      }
    }

    .background-el {
      width: 100%;
      height: 100%;
      position: absolute;
      z-index: 1;
      background-position: right;
      background-repeat: no-repeat;
      background-size: cover;
      transition: 0.3s;
    }

    .el-title-2 {
      width: 20%;
      display: flex;
      flex-direction: column;
      gap: 20px;

      .title-2-el-content {
        display: flex;
        width: 100%;
        height: 100%;
        color: var(--color-white);
        position: relative;
        transition: 0.3s;
        overflow: hidden;

        &:hover .background-el {
          transform: scale(1.1);
        }

        .el-banner-cont {
          padding: 40px;
          display: flex;
          flex-direction: column;
          justify-content: center;
          gap: 40px;
          z-index: 2;

          .el-banner-name {
            font-size: 25px;
            font-weight: 300;
          }

          .el-banner-description {
            font-size: 17px;
            font-weight: 500;
          }
        }
      }
    }
  }
}

.title-2-el-content:nth-child(1) .background-el {
  background-image: url("../../../public/assets/img/title/banner2.avif");
}

.title-2-el-content:nth-child(2) .background-el {
  background-image: url("../../../public/assets/img/title/banner1.avif");
}

.el-title-1 .background-el {
  background-image: url("../../../public/assets/img/title/banner3.webp");
}

// media
@media screen and (max-width: 1440px) {
  .el-title-1 {
    display: none !important;
  }
  .el-title-2 {
    width: 30% !important;
  }
  .el-title-big {
    width: 70% !important;
  }
}

@media screen and (max-width: 1024px) {
  .el-title-2 {
    display: none !important;
  }

  .el-title-big {
    width: 100% !important;
  }
}
</style>
