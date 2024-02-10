<template>
  <section class="items-count-in-cart">
    <div class="items-count-in-cart-inner">
      <div class="items-count-in-cart-tit">
        <div class="cart">
          <strong>Զամբյուղ</strong>
          <p><span class="items-count">120</span></p>
        </div>
        <div class="items-price-all">
          <span>Ընդհանուր: <strong>14,500 ֏</strong></span>
        </div>
      </div>
    </div>
  </section>
</template>
<style scoped lang="scss">
.items-count-in-cart {
  width: 100%;
  background-color: #0063d1;
  border-bottom-left-radius: 15px;
  border-bottom-right-radius: 15px;
  color: white;
  position: sticky;
  top: 0;
  z-index: 900;

  .items-count-in-cart-inner {
    width: 100%;
    padding: 10px 0;

    .items-count-in-cart-tit {
      padding: 5px 10px;
      max-width: 1800px;
      width: 100%;
      margin: 0 auto;
      display: flex;
      justify-content: space-between;
      align-items: center;

      .cart {
        display: flex;
        align-items: center;

        svg {
          width: 20px;
          margin-right: 10px;
        }
        .items-count {
          background-color: #f3f5f6;
          padding: 2px;
          color: black;
          border-radius: 5px;
          margin: 0 5px;
        }
      }

      .items-price-all {
        display: flex;
        align-items: center;

        form {
          display: flex;
          background-color: #f3f5f6;
          padding: 3px 5px;
          border-radius: 5px;
          margin-left: 10px;
          cursor: pointer;
          label {
            color: black;
          }
          input {
            width: 25px;
            cursor: pointer;
          }
        }
      }
    }
  }
}
</style>
