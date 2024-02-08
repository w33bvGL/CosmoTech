<template>
  <section class="mobile-search">
    <div class="mobile-search-inner">
      <div class="mobile-search-tit">
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/smartphone.webp"
              alt="cosmoSmartphone"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Սմարթֆոններ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/tablet.webp"
              alt="cosmoTablets"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Պլանշետներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/laptops.jpg"
              alt="cosmoLatptops"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Նոթբուքեր</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/computers.jpg"
              alt="cosmoComputers"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Համակարգիչներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/monitors.jpg"
              alt="cosmoMonitors"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Մոնիտորներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/printers.jpg"
              alt="cosmoPrinters"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Տպիչներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/smart-TV.webp"
              alt="cosmoSmart-TV"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Հեռուստացույցներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/audio-video.jpg"
              alt="cosmoAudio-video"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Աուդիո-վիդեո</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/camera.jpg"
              alt="cosmoCamera"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Ֆոտոխցիկներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/projector.jpg"
              alt="cosmoProjectors"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Պրոեկտորներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/game-console.jpg"
              alt="cosmoGameConsole"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>կոնսոլներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/drones.webp"
              alt="cosmoDrones"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Դրոններ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/watches.jpg"
              alt="cosmoWatches"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Ժամացույցներ</p>
          </div>
        </router-link>
        <router-link to="/" class="mobile-search-content">
          <div class="mobile-search-cont-image">
            <img
              src="../../public/assets/img/mobileSearch/accessories.jpg"
              alt="cosmoAccessories"
            />
          </div>
          <div class="mobile-search-cont-info">
            <p>Ակսեսուարներ</p>
          </div>
        </router-link>
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
      max-width: 1200px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      gap: 20px;
      flex-direction: row;
      flex-wrap: wrap;
      gap: 20px;

      .mobile-search-content {
        background-color: white;
        padding: 10px;
        cursor: pointer;
        width: calc(25% - 15px);
        background-color: white;
        display: flex;
        flex-direction: column;
        box-sizing: border-box;
        cursor: pointer;
        aspect-ratio: 1 / 1;

        &:hover .mobile-search-cont-info p {
          color: #0059bc;
        }

        &:hover .mobile-search-cont-image img {
          transform: scale(1.3);
        }

        .mobile-search-cont-image {
          background-color: white;
          display: flex;
          justify-content: center;
          margin: 10px;
          overflow: hidden;

          img {
            transition: transform 0.3s;
            width: 200px;
            transform: scale(1.2);
            pointer-events: none;
          }
        }

        .mobile-search-cont-info {
          margin: 10px 0;

          p {
            padding: 5px 10px;
            background-color: #f3f5f6;
            border-radius: 5px;
            transition: all 0.2s;
            text-align: center;
            font-weight: bold;
            font-size: 1.1em;
            transition: none;
            text-wrap: nowrap;
          }
        }
      }
    }
  }
}

@media screen and (max-width: 1024px) {
  .mobile-search-content {
    width: calc(33.3333333% - 6.7px) !important;
  }

  .mobile-search {
    padding: 10px 0 !important;
  }

  .mobile-search-cont-image {
    img {
      width: 240px !important;
    }
  }

  .mobile-search-tit {
    gap: 10px !important;
  }
}

@media screen and (max-width: 768px) {
  .mobile-search-cont-image {
    img {
      width: 200px !important;
    }
  }

  .mobile-search-cont-info {
    p {
      font-size: 1em !important;
    }
  }

  .mobile-search {
    padding-bottom: 90px !important;
  }

  .mobile-search-content {
    border-radius: 10px;
  }
}

@media screen and (max-width: 660px) {
  .mobile-search-cont-image {
    img {
      width: 150px !important;
    }
  }
}

@media screen and (max-width: 620px) {
  .mobile-search-cont-image {
    img {
      width: 100px !important;
    }
  }
}

@media screen and (max-width: 420px) {
  .mobile-search-content {
    width: calc(50% - 5px) !important;
  }

  .mobile-search-cont-image {
    img {
      width: 120px !important;
    }
  }
}

@media screen and (max-width: 375px) {
  .mobile-search-cont-image {
    img {
      width: 100px !important;
    }
  }
}
</style>
