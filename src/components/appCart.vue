<template>
  <section class="app-cart">
    <div class="app-cart-inner">
      <div class="app-cart-tit">
        <div
          v-for="(product, index) in products"
          :key="index"
          class="app-cart-product"
        >
          <div class="app-cart-product-image-block">
            <img :src="product.image" alt="cart-prod-image" />
          </div>
          <div class="app-cart-product-info">
            <div class="app-cart-name-descr">
              <div class="app-cart-info-name">
                <strong>{{ product.name }}</strong>
              </div>
              <div class="app-cart-info-description">
                <p>{{ product.description }}</p>
              </div>
            </div>
            <div class="app-cart-price-old-new">
              <div class="app-cart-new-price">{{ product.newPrice }}</div>
              <div class="app-cart-old-price">{{ product.oldPrice }}</div>
            </div>
            <div class="app-cart-delivery">
              <p>{{ product.delivery }}</p>
            </div>
            <div class="app-cart-recovery">
              <p>{{ product.recovery }}</p>
            </div>
            <div class="product-count-delete-more">
              <div class="custom-counter">
                <button @click="decrement(product.id)" class="counter-btn">
                  -
                </button>
                <input
                  type="text"
                  v-model="product.count"
                  class="counter-input"
                  @input="validateInput(product.id)"
                />
                <button @click="increment(product.id)" class="counter-btn">
                  +
                </button>
              </div>
              <div class="custom-buy">
                <button @click="addToCart(product.id)">Գնել</button>
              </div>
            </div>
          </div>
          <div class="app-cart-more">
            <button>
              <svg
                class="w-[20px] h-[20px] text-gray-800 dark:text-white"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
              >
                <path
                  stroke="#1c274c"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="1"
                  d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"
                />
              </svg>
            </button>
            <button>
              <svg
                class="w-[20px] h-[20px] text-gray-800 dark:text-white"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
              >
                <path
                  stroke="#1c274c"
                  stroke-linecap="round"
                  stroke-width="1"
                  d="m8 10.9 7-3.2m-7 5.4 7 3.2M8 12a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Zm12 5.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Zm0-11a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Z"
                />
              </svg>
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
export default {
  data() {
    return {
      products: [
        {
          id: 1,
          name: "SX-2357 Closed-Back Անլար ականջակալներ",
          description:
            "Նոր Օրիգինալ Անլար ականջակալներ SX-2357 Closed-black Սպիտակ",
          newPrice: "5400 ֏",
          oldPrice: "6700 ֏",
          delivery: "Առաքումը: CosmoTechStore",
          recovery:
            "650 դրամ ապրանքնը ետ վերադարձնելու համար հրաժարվելու դեպքում",
          image: "assets/img/topProducts/top-prod-1.webp",
          count: 1,
        },
        {
          id: 2,
          name: "Название второго продукта",
          description: "Описание второго продукта",
          newPrice: "7449",
          oldPrice: "3345",
          delivery: "Доставка второго продукта",
          recovery: "Информация о возврате второго продукта",
          image: "assets/img/topProducts/top-prod-1.webp",
          count: 2,
        },
      ],
    };
  },
  methods: {
    increment(productId) {
      const product = this.products.find((p) => p.id === productId);
      if (product) {
        product.count++;
      }
    },
    decrement(productId) {
      const product = this.products.find((p) => p.id === productId);
      if (product && product.count > 1) {
        product.count--;
      }
    },
    validateInput(productId) {
      const product = this.products.find((p) => p.id === productId);
      if (product) {
        product.count = product.count.replace(/\D/g, "");
      }
    },
    addToCart(productId) {
      console.log(`ID: ${productId}`);
    },
  },
};
</script>
<style scoped lang="scss">
.app-cart {
  width: 100%;
  background-color: #f3f5f6;
  padding: 40px 0px;
  min-height: 100vh;
  .app-cart-inner {
    width: 100%;
    padding: 0 10px;
    .app-cart-tit {
      max-width: 1200px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      flex-direction: column;
      gap: 20px;
    }
  }
}
.app-cart-product {
  cursor: pointer;
  background-color: white;
  padding: 20px;
  border-radius: 20px;
  width: 100%;
  display: flex;
  justify-content: space-between;
  &:hover {
    .app-cart-info-name {
      color: #0063d1;
    }
  }
  .app-cart-delivery {
    color: #666666;
    font-size: 0.9em;
  }
  .app-cart-recovery {
    color: #959595;
    margin-top: 2px;
    font-size: 0.8em;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
  .app-cart-info-name {
    width: 100%;
    font-weight: bold;
    transition: 0.2s color;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
  .app-cart-info-description {
    width: 100%;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    overflow: hidden;
    margin-top: 10px;
  }
  .app-cart-product-image-block {
    position: relative;
    width: 20%;
    min-width: 130px;
    overflow: hidden;
    display: flex;
    align-items: center;
    img {
      width: 100%;
      min-width: 130px;
      pointer-events: none;
    }
  }
  .app-cart-product-info {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    padding-left: 10px;
    width: 100%;
    .app-cart-price-old-new {
      width: 100%;
      padding: 10px 0;
      display: flex;
      gap: 10px;
      .app-cart-new-price {
        color: #0063d1;
        font-weight: bold;
      }
      .app-cart-old-price {
        text-decoration: line-through;
        display: flex;
        align-items: center;
        color: #666666;
      }
    }
  }
  .product-count-delete-more {
    padding: 10px 0;
    padding-bottom: 0;
    display: flex;
    gap: 10px;
    .custom-counter {
      display: flex;
    }
    .counter-input {
      width: 50px;
      padding: 8px;
      text-align: center;
      border: none;
      background-color: #ebebeb;
      outline: none;
    }
    .counter-btn {
      background-color: #0063d1;
      color: white;
      border: none;
      width: 35px;
      cursor: pointer;
    }
    .counter-btn:hover {
      background-color: #0059bc;
    }
    .custom-buy {
      width: 200px;
      display: flex;
      button {
        width: 100%;
        cursor: pointer;
        background-color: #ebebeb;
        border: none;
        outline: none;
        color: #0063d1;
        letter-spacing: 1px;
        border-radius: 10px;
        transition: background-color 0.2s;
        &:hover {
          background-color: #dfe7f6;
        }
      }
    }
  }
  .app-cart-more {
    display: flex;
    flex-grow: 1;
    flex-direction: column;
    height: 100%;
    button {
      background-color: transparent;
      border: none;
      cursor: pointer;
      margin: 5px 0;
      &:hover svg path {
        stroke: #0063d1 !important;
      }
      svg {
        width: 25px;
      }
    }
  }
}

@media screen and (max-width: 1024px) {
  .app-cart {
    padding: 10px 0;
  }

  .app-cart-tit {
    gap: 10px !important;
  }
}

@media screen and (max-width: 768px) {
  .app-cart-product {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    padding: 10px;
  }

  .app-cart {
    padding-bottom: 80px !important;
  }

  .product-count-delete-more {
    padding-top: 5px !important;
  }

  .app-cart-price-old-new {
    padding: 5px 0 !important;
  }
  .custom-buy {
    width: 100px !important;
  }

  .app-cart-more {
    svg {
      width: 20px !important;
    }
  }

  .custom-counter {
    .counter-btn {
      width: 30px !important;
    }
  }
}

@media screen and (max-width: 425px) {
  .app-cart {
    padding-top: 5px !important;
  }
  .app-cart-product-info {
    justify-content: space-between !important;
  }

  .custom-counter {
    .counter-btn {
      width: 25px !important;
      height: 25px !important;
    }
  }

  .counter-input {
    padding: 0 !important;
  }

  .app-cart-inner {
    padding: 0 5px !important;
  }

  .app-cart-tit {
    gap: 5px !important;
  }

  .app-cart-product-image-block {
    min-width: 110px !important;

    img {
      min-width: 110px !important;
    }
  }
}

@media screen and (max-width: 375px) {
  .app-cart-product-image-block {
    display: none !important;
  }
}
</style>
