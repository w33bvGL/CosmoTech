<template>
  <section class="top-categories">
    <div class="top-categories-inner">
      <div class="top-categories-tit">
        <div class="top-category-2" v-if="Banner418x200.length > 0">
          <div class="top-cat-2-inner-content">
            <img :src="Banner418x200[0].image" alt="BannerImage" />
            <button>{{ Banner418x200[0].name }}</button>
          </div>
          <div class="top-cat-2-inner-content">
            <img :src="Banner418x200[1].image" alt="BannerImage" />
            <button>{{ Banner418x200[1].name }}</button>
          </div>
        </div>
        <div class="top-category-1" v-if="Banner417x420.length > 0">
          <div class="top-cat-1-inner-content">
            <img :src="Banner417x420[0].image" alt="BannerImage" />
            <button>{{ Banner417x420[0].name }}</button>
          </div>
        </div>
        <div class="top-category-2" v-if="Banner418x200.length > 0">
          <div class="top-cat-2-inner-content">
            <img :src="Banner418x200[2].image" alt="BannerImage" />
            <button>{{ Banner418x200[2].name }}</button>
          </div>
          <div class="top-cat-2-inner-content">
            <img :src="Banner418x200[3].image" alt="BannerImage" />
            <button>{{ Banner418x200[3].name }}</button>
          </div>
        </div>
        <div class="top-category-1" v-if="Banner417x420.length > 0">
          <div class="top-cat-1-inner-content">
            <img :src="Banner417x420[1].image" alt="BannerImage" />
            <button>{{ Banner417x420[1].name }}</button>
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
      Banner418x200: [],
      Banner417x420: [],
    };
  },
  methods: {
    getBanner418x200() {
      axios
        .get("/inc/getBanner-418x200-template.json")
        .then((response) => {
          this.Banner418x200 = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
    getBanner417x420() {
      axios
        .get("/inc/getBanner-417x420-template.json")
        .then((response) => {
          this.Banner417x420 = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
  },
  mounted() {
    this.getBanner418x200();
    this.getBanner417x420();
  },
};
</script>
<style scoped lang="scss">
.top-categories {
  width: 100%;
  padding: 40px 0;
  font-size: 0.8em;

  .top-categories-inner {
    width: 100%;
    padding: 0 10px;

    .top-categories-tit {
      max-width: 1800px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      gap: 20px;
      flex-direction: row;

      .top-category-1 {
        width: 25%;
        display: flex;
        overflow: hidden;
        transition: 0.5s all;

        .top-cat-1-inner-content {
          position: relative;
          width: 100%;
          overflow: hidden;
          cursor: pointer;

          img {
            position: absolute;
            width: 100%;
            height: 100%;
            transition: all var(--sw-banner-hover-transition);
            pointer-events: none;
          }

          &:hover img {
            transform: scale(1.1);
          }

          button {
            position: absolute;
            border: none;
            top: 80%;
            z-index: 10;
            padding: 10px 15px;
            text-wrap: nowrap;
            left: 50%;
            transform: translate(-50%);
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s;

            &:hover {
              background-color: var(--app-banner-button-hover-color);
              color: white;
            }
          }
        }
      }

      .top-category-2 {
        width: 25%;
        display: flex;
        flex-direction: column;
        gap: 20px;

        .top-cat-2-inner-content {
          position: relative;
          width: 100%;
          cursor: pointer;
          overflow: hidden;
          aspect-ratio: 2 / 1;
          transition: 0.5s all;

          img {
            position: absolute;
            width: 100%;
            height: 100%;
            transition: all var(--sw-banner-hover-transition);
            pointer-events: none;
          }

          &:hover img {
            transform: scale(1.1);
          }

          button {
            position: absolute;
            border: none;
            top: 70%;
            z-index: 10;
            padding: 10px 15px;
            text-wrap: nowrap;
            left: 50%;
            transform: translate(-50%, -50%);
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-radius: 4px;
            transition: all 0.3s;
            cursor: pointer;

            &:hover {
              background-color: var(--app-banner-button-hover-color);
              color: white;
            }
          }
        }
      }
    }
  }
}

@media screen and (max-width: 1024px) {
  .top-categories {
    padding: 10px 0;
  }

  .top-categories-tit {
    gap: 10px !important;
  }

  .top-category-2 {
    width: 100% !important;
    flex-direction: column !important;
    gap: 10px !important;
  }

  .top-category-1 {
    display: none !important;
  }

  .top-category-1,
  .top-category-2 {
    button {
      padding: 8px 10px !important;
    }
  }
}

@media screen and (max-width: 768px) {
  .top-category-2 {
    flex-direction: column !important;
  }

  .top-cat-2-inner-content {
    border-radius: 20px;
  }
}

@media screen and (max-width: 425px) {
  .top-categories {
    padding: 5px 0 !important;
  }

  .top-categories-tit {
    gap: 5px !important;
  }

  .top-category-1,
  .top-category-2 {
    gap: 5px !important;
    button {
      padding: 5px 10px !important;
      background-color: var(--app-banner-button-hover-color);
      color: white;
    }
  }
}
</style>
