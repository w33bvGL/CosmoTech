<template>
  <section class="elementor">
    <div class="elementor-inner">
      <div class="elementor-title">
        <div class="el-title-big elementor-el">
          <!-- slider Start -->
          <swiper
            class="swiper-container"
            :slides-per-view="1"
            :slides-per-group="1"
            :space-between="50"
            :pagination="true"
            @swiper="onSwiper"
            :grabCursor="true"
            :modules="modules"
            :autoplay="{
              delay: 2500,
              disableOnInteraction: false,
            }"
            @slideChange="onSlideChange"
          >
            <swiper-slide
              class="swiper-slide"
              v-for="banner in mainBanner"
              :key="banner.id"
            >
              <img
                :src="banner.image"
                alt="mainBanner"
                class="sw-model-back-image"
              />
              <div class="sw-cont">
                <h2 class="sw-model-name">{{ banner.category }}</h2>
                <h2 class="sw-model-title">{{ banner.name }}</h2>
                <p class="sw-model-description">
                  {{ banner.description }}
                </p>
                <button class="sw-model-button" @click="mainBannerGotoShop()">
                  Տեսնել ավելին
                </button>
              </div>
            </swiper-slide>
          </swiper>
          <!-- slider sliderEnd -->
        </div>
        <div class="el-title-2 elementor-el">
          <div class="title-2-el-content" v-if="banner338x240.length > 0">
            <img
              class="background-el"
              :src="banner338x240[0].image"
              alt="BannerImage"
            />
            <div class="el-banner-cont">
              <h2 class="el-banner-name">{{ banner338x240[0].name }}</h2>
              <p class="el-banner-description">
                {{ banner338x240[0].description }}
              </p>
            </div>
          </div>
          <div class="title-2-el-content" v-if="banner338x240.length > 1">
            <img
              class="background-el"
              :src="banner338x240[1].image"
              alt="BannerImage"
            />
            <div class="el-banner-cont">
              <h2 class="el-banner-name">{{ banner338x240[1].name }}</h2>
              <p class="el-banner-description">
                {{ banner338x240[1].description }}
              </p>
            </div>
          </div>
        </div>
        <div class="el-title-1 elementor-el" v-if="banner338x500.length > 0">
          <img
            class="background-el"
            :src="banner338x500[0].image"
            alt="BannerImage"
          />
          <div class="el-banner-cont">
            <div class="names">
              <h3 class="el-banner-name">{{ banner338x500[0].name }}</h3>
              <h2 class="el-banner-title">
                {{ banner338x500[0].description }}
              </h2>
            </div>
            <button class="el-banner-button" @click="bannerGotoShop()">
              Պատվիրել հիմա
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";
import { Swiper, SwiperSlide } from "swiper/vue";
import { Pagination, Autoplay } from "swiper/modules";
import "swiper/css";
import "swiper/css/pagination";

export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  setup() {
    const onSwiper = () => {};
    const onSlideChange = () => {};
    return {
      onSwiper,
      onSlideChange,
      modules: [Pagination, Autoplay],
    };
  },
  data() {
    return {
      banner338x240: [],
      banner338x500: [],
      mainBanner: [],
    };
  },
  methods: {
    bannerGotoShop() {
      window.location.href = "shop.php?" + this.banner338x500[0].name;
    },
    mainBannerGotoShop() {
      window.location.href = "shop.php?" + this.banner338x500[0].name;
    },
    getMainBanner() {
      axios
        .get("/inc/mainBanner-template.json")
        .then((response) => {
          this.mainBanner = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.responce);
        });
    },
    getBanner338x240() {
      axios
        .get("/inc/getBanner-338x240-template.json")
        .then((response) => {
          this.banner338x240 = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
    getBanner338x500() {
      axios
        .get("/inc/getBanner-338x500-template.json")
        .then((response) => {
          this.banner338x500 = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
  },
  mounted() {
    this.getBanner338x240();
    this.getBanner338x500();
    this.getMainBanner();
  },
};
</script>

<style scoped lang="scss">
.swiper-container {
  width: 100%;
  height: 100%;
  color: var(--color-white);

  .swiper-slide {
    width: 100%;
    height: 100%;
    position: relative;

    .sw-model-back-image {
      position: absolute;
      width: 100%;
      height: 100%;
      object-fit: cover;
      object-position: top;
      border: 1px solid rgba(102, 102, 102, 0.1);
      border-radius: 5px;
    }
    .sw-cont {
      width: 100%;
      padding: 50px;
      height: 100%;
      display: flex;
      flex-direction: column;
      gap: 20px;
      justify-content: center;
      position: absolute;
      z-index: 2;
      color: white !important;
      font-weight: bold;

      .sw-model-name {
        text-transform: uppercase;
        letter-spacing: 0px;
        line-height: 40px;
        font-size: 3em;
        color: black;
        font-family: "roboto" !important;
      }

      .sw-model-title {
        text-transform: uppercase;
        letter-spacing: 0px;
        line-height: 40px;
        font-size: clamp(1em, 2em, 2.2em);
        color: black;
      }

      .sw-model-description {
        font-weight: 500;
        color: black;
      }

      .sw-model-button {
        padding: 15px 0;
        border-radius: 5px;
        text-transform: uppercase;
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
        font-size: 0.8em;

        &:hover {
          background-color: var(--sw-model-button-hov);
        }
      }
    }
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
    height: 100%;
    display: flex;
    gap: 20px;

    .elementor-el {
      aspect-ratio: 2 / 1;
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
            font-weight: 300;
            margin-bottom: 10px;
          }

          .el-banner-title {
            font-weight: 300;
            text-align: center;
          }
        }

        .el-banner-button {
          padding: 8px 15px;
          background-color: transparent;
          border: 2px solid var(--color-white);
          color: var(--color-white);
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
      object-fit: cover;
      transition: var(--sw-banner-hover-transition);
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
            font-weight: 300;
          }

          .el-banner-description {
            font-weight: 500;
          }
        }
      }
    }
  }
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
  .elementor-title {
    flex-direction: column;
    gap: 10px !important;
  }

  .elementor {
    padding-bottom: 0 !important;
  }

  .elementor-el {
    aspect-ratio: 2.5 / 1 !important;
  }

  .el-title-2 {
    display: flex !important;
    flex-direction: row !important;
    width: 100% !important;
    gap: 10px !important;
    aspect-ratio: 1 / 0.25 !important;
    .el-banner-cont {
      width: 100%;
      text-align: center;
    }
  }

  .el-title-big {
    width: 100% !important;
  }

  .elementor {
    background-color: var(--elementor-background-color-mobile);
    padding: 10px 0;
  }

  .sw-cont {
    gap: 10px !important;
  }
}

@media screen and (max-width: 768px) {
  .swiper-slide {
    .sw-cont {
      justify-content: center;
      align-items: center;
      gap: 5px;
      text-align: center;
      padding: 0 !important;
    }
  }

  .slider-button {
    display: none;
  }

  .elementor {
    .el-title-big {
      border-radius: 20px;
    }
  }

  .title-2-el-content {
    border-radius: 20px;

    .el-banner-cont {
      padding: 10px !important;
      gap: 10px !important;

      h2 {
        font-size: 1.2em;
      }

      p {
        font-size: 0.9em;
      }
    }
  }
}

//  only for header
@media screen and (max-width: 615px) {
  .elementor-el {
    width: 100%;
  }

  .sw-model-button {
    display: none !important;
  }
}

@media screen and (max-width: 425px) {
  .sw-model-name {
    display: none !important;
  }

  .elementor {
    padding: 5px 0 !important;
    padding-bottom: 0 !important;
  }

  .elementor-title {
    gap: 5px !important;
  }

  .el-title-2 {
    flex-direction: column !important;
    gap: 5px !important;
    aspect-ratio: 1 / 0.5 !important;
  }

  .el-banner-cont {
    align-items: flex-start !important;
  }
}

@media screen and (max-width: 425px) {
  .elementor-inner {
    padding: 0 5px !important;
  }
}
</style>
