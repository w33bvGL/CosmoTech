<template>
  <section class="mobile-search">
    <div class="mobile-search-inner">
      <div class="mobile-search-tit">
        <a class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/smartphone.png"
              alt="cosmoSmartphone"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Սմարթֆոններ</p>
          </div>
        </a>
      </div>
    </div>
  </section>
</template>
<script></script>
<style defer lang="scss">
.mobile-search {
  background-color: var(--elementor-background-color);
  width: 100%;
  padding: 40px 0px;

  .mobile-search-inner {
    width: 100%;
    padding: 0 10px;

    .mobile-search-tit {
      max-width: 1800px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      gap: 20px;

      .mobile-search-content {
        background-color: white;
        padding: 10px;
        display: flex;
        flex-direction: column;
        cursor: pointer;

        .mobile-search-cont-image {
          background-color: white;
          display: flex;
          justify-content: center;
          margin: 10px;
          overflow: hidden;
          transition: all 0.3s;

          img {
            width: 200px;
          }
        }

        .mobile-search-cont-info {
          margin: 10px 0;
          p {
            text-align: center;
            font-weight: bold;
            font-size: 1.1em;
          }
        }
      }
    }
  }
}
</style>
