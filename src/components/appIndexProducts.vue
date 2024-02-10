<template>
  <section class="ind-products">
    <div class="ind-products-inner">
      <div class="ind-products-tit">
        <div class="ind-prod-container">
          <div class="ind-prod-container-inner">
            <a
              class="ind-prod-card"
              v-for="prodList in productsList"
              :key="prodList.id"
              :href="`connect.html?id=${prodList.id}`"
            >
              <div class="ind-f-prod-card-image-block">
                <img :src="prodList.img1" :alt="prodList.img1_alt" />
              </div>
              <div class="ind-f-prod-card-information">
                <div class="ind-f-prod-card-prod-name">
                  <p>{{ prodList.name }}</p>
                </div>
                <div class="ind-f-prod-card-prod-description">
                  <p>{{ prodList.description }}</p>
                </div>
                <div class="ind-f-prod-card-prod-price">
                  <div class="new-price">
                    <p>{{ prodList.new_price }} ֏</p>
                  </div>
                  <div class="old-price">
                    <p>{{ prodList.old_price }} ֏</p>
                  </div>
                </div>
              </div>
            </a>
          </div>
          <button @click="loadMore" id="more">Տեսնել Ավելին</button>
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
      productsList: [],
      page: 1,
      itemsPerPage: 6,
    };
  },
  methods: {
    async loadMore() {
      try {
        const response = await axios.get(
          `/inc/getProductsList-template.json?page=${this.page}&itemsPerPage=${this.itemsPerPage}`
        );

        if (response.data.length > 0) {
          this.productsList = [...this.productsList, ...response.data];
          this.page++;
        } else {
          console.log("no More products ...");
          const moreButton = document.getElementById("more");
          moreButton.classList.add("vahe");
        }
      } catch (error) {
        console.error("error", error);
      }
    },
  },
  mounted() {
    this.loadMore();
  },
};
</script>
<style scoped lang="scss">
.ind-products {
  width: 100%;
  padding: 40px 0;

  .ind-products-inner {
    width: 100%;
    padding: 0 10px;

    .ind-products-tit {
      max-width: 1800px;
      margin: 0 auto;
    }
  }
}

.ind-prod-container {
  width: 100%;

  .ind-prod-container-inner {
    margin: 10px 0;
    width: 100%;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    gap: 20px;
  }
}

.ind-prod-card {
  width: calc(16.6666666666666% - 17px);
  background-color: white;
  display: flex;
  flex-direction: row;
  padding: 10px;
  box-sizing: border-box;
  cursor: pointer;
  aspect-ratio: 1 / 0.7;
  flex-direction: column;
  border: 1px solid rgba(10, 10, 10, 0.05);

  &:hover .ind-f-prod-card-image-block img {
    transform: scale(1.1);
  }

  &:hover .ind-f-prod-card-prod-name p {
    color: var(--top-f-prod-card-inf-prod-name-color-hov);
  }

  .ind-f-prod-card-image-block {
    width: 100%;
    position: relative;
    overflow: hidden;

    img {
      width: 100%;
      transition: 0.3s all;
      pointer-events: none;
    }
  }

  .ind-f-prod-card-information {
    width: 100%;
    padding: 10px 0;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: space-evenly;
    gap: 10px;

    .ind-f-prod-card-prod-name {
      width: 100%;
      font-weight: bold;
      display: -webkit-box;
      -webkit-line-clamp: 1;
      -webkit-box-orient: vertical;
      overflow: hidden;

      p {
        transition: 0.2s all;
      }
    }

    .ind-f-prod-card-prod-description {
      display: -webkit-box;
      -webkit-line-clamp: 3;
      -webkit-box-orient: vertical;
      overflow: hidden;
      color: var(--top-f-prod-card-inf-prod-description-color);
    }

    .ind-f-prod-card-prod-price {
      display: flex;
      gap: 10px;
      align-items: center;
      .new-price {
        color: var(--top-f-prod-card-inf-prod-price-new-price-color) !important;
        font-weight: bold;
      }
      .old-price {
        text-decoration: line-through;
        display: flex;
        align-items: center;
        color: var(--top-f-card-old-price-color) !important;
      }
    }
  }
}

.ind-prod-container {
  button {
    width: 100%;
    padding: 10px 10px;
    color: white;
    text-transform: uppercase;
    font-weight: bold;
    letter-spacing: 1px;
    background-color: #0063d1;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.2s;
    font-size: 0.8em;

    &:hover {
      background-color: #0059bc;
    }
  }
}

@media screen and (max-width: 1540px) {
  .ind-f-prod-card-prod-description {
    -webkit-line-clamp: 2 !important;
  }
}

@media screen and (max-width: 1440px) {
  .ind-f-prod-card-prod-description {
    -webkit-line-clamp: 3 !important;
  }
  .ind-prod-card {
    width: calc(20% - 16px);
  }
}

@media screen and (max-width: 1024px) {
  .ind-products {
    padding: 10px 0;
  }

  .ind-prod-container-inner {
    gap: 10px !important;
  }

  .ind-prod-card {
    width: calc(25% - 8px);
  }
}

@media screen and (max-width: 768px) {
  .ind-prod-card {
    width: calc(50% - 5px);
    border-radius: 20px;
  }

  .ind-f-prod-card-information {
    padding: 0 !important;
  }
}

@media screen and (max-width: 425px) {
  .ind-products {
    padding: 5px 0 !important;
  }

  .ind-products-inner {
    padding: 0 5px !important;
  }

  .ind-prod-container-inner {
    gap: 5px !important;
  }

  .ind-prod-card[data-v-64a35d76] {
    width: calc(50% - 2.5px) !important;
  }
}
</style>
