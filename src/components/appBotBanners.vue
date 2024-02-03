<template>
  <section class="bottom-banners">
    <div class="bottom-banners-inner">
      <div class="bottom-banners-tit" v-if="Banner564x200.length > 0">
        <div class="bot-banners-content">
          <img :src="Banner564x200[0].image" alt="" />
          <div class="banner-title">
            <span>Լավագույն ապրանքները</span>
            <h2>{{ Banner564x200[0].name }}</h2>
            <p>{{ Banner564x200[0].description }}</p>
          </div>
        </div>
        <div class="bot-banners-content">
          <img :src="Banner564x200[1].image" alt="" />
          <div class="banner-title">
            <span>Բեսթսելեր ապրանքներ</span>
            <h2>{{ Banner564x200[1].name }}</h2>
            <p>{{ Banner564x200[1].description }}</p>
          </div>
        </div>
        <div class="bot-banners-content">
          <img :src="Banner564x200[2].image" alt="" />
          <div class="banner-title">
            <span>Առաջարկվող ապրանքներ</span>
            <h2>{{ Banner564x200[2].name }}</h2>
            <p>{{ Banner564x200[2].description }}</p>
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
      Banner564x200: [],
    };
  },
  methods: {
    getBanner564x200() {
      axios
        .get("/inc/getBanner-564x200-template.json")
        .then((response) => {
          this.Banner564x200 = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
  },
  mounted() {
    this.getBanner564x200();
  },
};
</script>
<style scoped lang="scss">
.bottom-banners {
  padding: 40px 0;
  width: 100%;

  .bottom-banners-inner {
    width: 100%;
    padding: 0 10px;

    .bottom-banners-tit {
      max-width: 1800px;
      margin: 0 auto;
      display: flex;
      flex-direction: row;
      flex-wrap: wrap;
      gap: 20px;
    }
  }
}

.bot-banners-content {
  width: calc(33.3333333% - 13.4px);
  background-color: white;
  display: flex;
  box-sizing: border-box;
  position: relative;
  aspect-ratio: 1 / 0.3;
  overflow: hidden;

  &:hover img {
    transform: scale(1.1);
  }

  img {
    position: absolute;
    width: 100%;
    height: 100%;
    transition: 0.5s all;
  }

  .banner-title {
    z-index: 2;
    padding: 10px;
    color: white;
    width: 100%;
    position: absolute;
    height: 100%;
    flex-direction: column;
    justify-content: space-evenly;
    display: flex;

    span {
      color: #e6c300;
    }
  }
}

@media screen and (max-width: 1440px) {
  .bot-banners-content {
    aspect-ratio: 1 / 0.4;
  }
}

@media screen and (max-width: 1024px) {
  .bottom-banners {
    padding: 10px 0;

    .bot-banners-content {
      width: calc(50% - 5px);
      aspect-ratio: 1 / 0.35;
    }

    .bottom-banners-tit .bot-banners-content:nth-child(3) {
      display: none;
    }
    .bottom-banners-tit {
      gap: 10px !important;
    }
  }
}

@media screen and (max-width: 768px) {
  .bot-banners-content {
    width: calc(100% - 0px) !important;
    aspect-ratio: 1 / 0.3 !important;
  }

  .bottom-banners-tit .bot-banners-content:nth-child(3) {
    display: flex !important;
  }
}
</style>
