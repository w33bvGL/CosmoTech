<template>
  <section class="top-categories">
    <div class="top-categories-inner">
      <div class="top-categories-tit">
        <div class="top-category-2" v-if="Banner418x200.length > 0">
          <div class="top-cat-2-inner-content">
            <img
              class="background-el"
              :src="Banner418x200[0].image"
              alt="BannerImage"
            />
            <button>{{ Banner418x200[0].name }}</button>
          </div>
          <div class="top-cat-2-inner-content">
            <img
              class="background-el"
              :src="Banner418x200[1].image"
              alt="BannerImage"
            />
            <button>{{ Banner418x200[1].name }}</button>
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
  },
  mounted() {
    this.getBanner418x200();
  },
};
</script>
<style scoped lang="scss">
.top-categories {
  width: 100%;
  padding: 40px 0;

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

      .top-category-2 {
        width: 25%;
        display: flex;
        flex-direction: column;

        gap: 20px;

        .top-cat-2-inner-content {
          position: relative;
          width: 100%;
          height: 200px;
          cursor: pointer;
          overflow: hidden;

          img {
            position: absolute;
            width: 100%;
            height: 100%;
            transition: all var(--sw-banner-hover-transition);
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
            font-size: 12px;
          }
        }
      }
    }
  }
}
</style>
