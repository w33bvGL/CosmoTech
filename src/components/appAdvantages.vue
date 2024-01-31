<template>
  <section class="advantages">
    <div class="advantages-inner">
      <div class="adv-title">
        <div class="adv">
          <div class="adv-inner">
            <div class="adv-content">
              <div class="advesting-child">
                <div class="adv-img">
                  <img
                    src="../../public/assets/img/advertising/shipped.webp"
                    alt=""
                  />
                </div>
                <div class="adv-inner-contnent">
                  <h4>ԱՆՎՃԱՐ ԱՌԱՔՈՒՄ</h4>
                  <p>1000 ֏-ից բարձր պատվերների դեպքում</p>
                </div>
              </div>
            </div>
            <div class="adv-content">
              <div class="advesting-child">
                <div class="adv-img">
                  <img
                    src="../../public/assets/img/advertising/credit-card.webp"
                    alt=""
                  />
                </div>
                <div class="adv-inner-contnent">
                  <h4>ԱՆՎՏԱՆԳ ՎՃԱՐՈՒՄՆԵՐ</h4>
                  <p>100% ապահով վճարում</p>
                </div>
              </div>
            </div>
            <div class="adv-content">
              <div class="advesting-child">
                <div class="adv-img">
                  <img
                    src="../../public/assets/img/advertising/chat.webp"
                    alt=""
                  />
                </div>
                <div class="adv-inner-contnent">
                  <h4>ՕԳՆՈՒԹՅՈՒՆ 24/7</h4>
                  <p>24/7 աջակցություն</p>
                </div>
              </div>
            </div>
            <div class="adv-content">
              <div class="advesting-child">
                <div class="adv-img">
                  <img
                    src="../../public/assets/img/advertising/money.webp"
                    alt=""
                  />
                </div>
                <div class="adv-inner-contnent">
                  <h4>Կվերադարձնենք</h4>
                  <p>Եթե ապրանքները խնդիրներ ունեն</p>
                </div>
              </div>
            </div>
            <div class="adv-content">
              <div class="advesting-child">
                <div class="adv-img">
                  <img
                    src="../../public/assets/img/advertising/id-card.webp"
                    alt=""
                  />
                </div>
                <div class="adv-inner-contnent">
                  <h4>ԾԱՌԱՅՈՒԹՅՈՒՆՆԵՐ</h4>
                  <p>30 օր երաշխիք</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script></script>

<style scoped lang="scss">
.advantages {
  background-color: var(--advantages-background-color);
  width: 100%;
  padding-top: 0;
  padding-bottom: 40px;

  .advantages-inner {
    width: 100%;
    padding: 0 10px;

    .adv-title {
      max-width: 1800px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      gap: 20px;

      .adv {
        background-color: var(--adv-background-color);
        width: 100%;

        .adv-inner {
          width: 100%;
          padding: 10px 0;
          display: flex;
          flex-wrap: wrap;

          .adv-content {
            width: 20%;
            height: 50px;
            margin: 10px 0;
            border-right: 1px solid var(--adv-content-border-color);
            display: flex;

            .advesting-child {
              height: 100%;
              padding: 0 10px;
              margin: 0 auto;
              display: flex;
              align-items: center;

              .adv-img {
                height: 100%;
                display: flex;
                align-items: center;
                margin-right: 20px;
                pointer-events: none;

                img {
                  width: 50px;
                  pointer-events: none;
                }
              }

              .adv-inner-contnent {
                width: 100%;
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: center;

                h4 {
                  margin-bottom: 4px;
                  text-transform: uppercase;
                  font-weight: bold;
                  font-size: 0.9em;
                }

                p {
                  color: var(--adv-title-p-color);
                  font-size: 0.8em;
                }
              }
            }
          }

          .adv-content:last-child {
            border: none;
          }
        }
      }
    }
  }
}

@media screen and (max-width: 1440px) {
  .advantages {
    display: none;
  }
}
</style>
