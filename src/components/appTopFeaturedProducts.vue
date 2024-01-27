<template>
  <section class="top-featured-products">
    <div class="top-featured-products-inner">
      <div class="top-featured-products-tit">
        <div class="top-f-prod-title-h2">
          <h2>Լավագույն Առաջարկվող <span>Ապրանքներ</span></h2>
        </div>
        <div class="top-f-prod-container">
          <div class="top-f-prod-cont-inner">
            <a
              class="top-f-prod-card"
              v-for="topProd in TopFeaturedProductsList"
              :key="topProd.id"
              :href="`connect.html?id=${topProd.id}`"
            >
              <div class="top-f-prod-card-image-block">
                <img :src="topProd.img1" :alt="topProd.img1_alt" />
              </div>
              <div class="top-f-prod-card-information">
                <div class="top-f-prod-card-inf-prod-name">
                  <p>{{ topProd.name }}</p>
                </div>
                <div class="top-f-prod-card-inf-prod-description">
                  <p>{{ topProd.description }}sins</p>
                </div>
                <div class="top-f-prod-card-inf-prod-price">
                  <div class="new-price">
                    <p>{{ topProd.new_price }} ֏</p>
                  </div>
                  <div class="old-price">
                    <p>{{ topProd.old_price }} ֏</p>
                  </div>
                </div>
              </div>
            </a>
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
      TopFeaturedProductsList: [],
    };
  },
  methods: {
    getTopFeaturedProducts() {
      axios
        .get("/inc/getTopFeaturedProductsList-template.json")
        .then((response) => {
          this.TopFeaturedProductsList = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
  },
  mounted() {
    this.getTopFeaturedProducts();
  },
};
</script>

<style scoped lang="scss">
.top-featured-products {
  width: 100%;
  padding: 40px 0;
  background-color: var(--elementor-background-color);

  .top-featured-products-inner {
    width: 100%;
    padding: 0 10px;

    .top-featured-products-tit {
      max-width: 1800px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      flex-direction: column;

      .top-f-prod-title-h2 {
        text-align: center;
        width: 100%;
        margin-bottom: 10px;
        span {
          font-weight: normal;
        }
      }
    }
  }
}

.top-f-prod-container {
  width: 100%;

  .top-f-prod-cont-inner {
    margin: 10px 0;
    width: 100%;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    gap: 20px;
  }
}

.top-f-prod-card {
  width: calc(25% - 15px);
  background-color: white;
  display: flex;
  flex-direction: row;
  padding: 10px;
  box-sizing: border-box;
  cursor: pointer;
  aspect-ratio: 1 / 0.45;
  transition: 0.5s all;

  &:hover .top-f-prod-card-image-block img {
    transform: scale(1.1);
  }

  &:hover .top-f-prod-card-information .top-f-prod-card-inf-prod-name {
    color: var(--top-f-prod-card-inf-prod-name-color-hov);
  }

  .top-f-prod-card-image-block {
    width: 40%;
    position: relative;
    overflow: hidden;

    img {
      width: 100%;
      transition: 0.3s all;
      pointer-events: none;
    }
  }

  .top-f-prod-card-information {
    width: 60%;
    padding-left: 10px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: space-evenly;

    .top-f-prod-card-inf-prod-name {
      width: 100%;

      font-weight: bold;
      transition: 0.2s;
      display: -webkit-box;
      -webkit-line-clamp: 1;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .top-f-prod-card-inf-prod-price {
      display: flex;
      gap: 10px;
      align-items: center;

      .old-price {
        text-decoration: line-through;

        display: flex;
        align-items: center;
        color: var(--top-f-card-old-price-color) !important;
      }

      .new-price {
        color: var(--top-f-prod-card-inf-prod-price-new-price-color) !important;
        font-weight: bold;
      }
    }

    .top-f-prod-card-inf-prod-description {
      display: -webkit-box;
      -webkit-line-clamp: 3;
      -webkit-box-orient: vertical;
      overflow: hidden;
      color: var(--top-f-prod-card-inf-prod-description-color);
    }
  }
}

@media screen and (max-width: 1440px) {
  .top-f-prod-card {
    width: calc(33.33333% - 14px);
  }
}

@media screen and (max-width: 1024px) {
  .top-f-prod-card {
    width: calc(50% - 5px);
    border: 1px solid rgba(10, 10, 10, 0.05);
  }

  .top-featured-products {
    padding: 10px 0;
  }

  .top-f-prod-cont-inner {
    gap: 10px !important;
  }

  .top-featured-products {
    background-color: white;
  }
}

@media screen and (max-width: 768px) {
  .top-f-prod-card {
    flex-direction: column;
    border-radius: 20px;

    .top-f-prod-card-image-block,
    .top-f-prod-card-information {
      width: 100%;
    }

    .top-f-prod-card-information {
      gap: 10px;
    }
  }

  .top-f-prod-card-information {
    padding: 0 !important;
  }
  .top-f-prod-title-h2 {
    margin: 0 !important;
  }
}
</style>
