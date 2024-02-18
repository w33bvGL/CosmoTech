<template>
  <!-- about header Start -->
  <section class="about-us-header-container">
    <div class="about-us-header-container-inner">
      <div class="about-us-header-container-tit">
        <h1>Մեր մասին</h1>
        <p>
          Մեր նպատակն է առաջարկել բարձրորակ սարքավորումներ, որոնցով մենք<br />
          օգնում ենք հաճախորդներին հասնել իրենց նպատակներին:
        </p>
        <div class="button-container">
          <button>ԲԱՑԱՀԱՅՏԵՔ ՀԻՄԱ</button>
        </div>
      </div>
    </div>
  </section>
  <!-- about header End -->
  <!-- about company Start -->
  <section class="about-us-company-container">
    <div class="about-us-company-container-inner">
      <div class="about-us-company-container-tit">
        <div class="about-company-left">
          <h2>
            Ավելին Ընկերության<br />
            մասին
          </h2>
        </div>
        <div class="about-company-right">
          <p>
            Cosmo Tech Shop-ը ընկերություն է, որն իր գործունեությունը սկսել է մի
            քանի տարի առաջ փոքր շինանյութի խանութով։ Այս ընթացքում մենք առաջատար
            ենք դարձել հաճախորդների լայն շրջանակի տեխնոլոգիական լուծումներ
            տրամադրելու հարցում:
          </p>
          <p>
            Մեր առաքելությունն է բոլորին հասանելի և հասկանալի դարձնել
            ժամանակակից տեխնոլոգիաները: Մենք հպարտ ենք յուրաքանչյուր հաճախորդին
            որակյալ ապրանքներ, պրոֆեսիոնալ սպասարկում և անհատականացված
            սպասարկում առաջարկելով: Գտնվելով մշտական աճի և զարգացման ուղու վրա՝
            մենք ձգտում ենք ապահովել, որ յուրաքանչյուր ոք, ով կապվում է մեզ հետ,
            զգա վստահ և գոհ իր գնումներից:
          </p>
        </div>
      </div>
    </div>
  </section>
  <!-- about company End -->
  <section class="about-us-ov-wwd-container">
    <div class="about-us-ov-wwd-container-inner">
      <div class="about-us-ov-wwd-container-tit">
        <div class="about-us-our-vision">
          <div class="image-block">
            <img
              src="../../public/assets/img/aboutus/ourvision.jpg"
              alt="cosmoTechOutVision"
            />
          </div>
          <div class="about-us-info">
            <h2>Մեր տեսլականը</h2>
            <p>
              Cosmo Tech Shop-ը ձգտում է դառնալ տեխնոլոգիական լուծումների
              առաջատար մատակարար, որը բարելավել մարդկանց կյանքը և դարձնել նրանց
              ավելի արդյունավետ: Մեր տեսլականն է հաճախորդներին տրամադրել
              նորարարական ապրանքներ և որակյալ ծառայություններ, որոնք
              համապատասխանում են նրանց կարիքները և սպասելիքները գերազանցելը:
            </p>
          </div>
        </div>
        <div class="about-us-what-we-do">
          <div class="image-block">
            <img
              src="../../public/assets/img/aboutus/whatwedo.jpg"
              alt="CosmoTechWhatWeDo"
            />
          </div>
          <div class="about-us-info">
            <h2>Ինչ ենք մենք անում</h2>
            <p>
              Մենք առաջարկում ենք ապրանքների և ծառայությունների լայն տեսականի,
              ներառյալ բարձրորակ վաճառք սարքավորումներ, մասնագիտական սպասարկում
              և աջակցություն: Մեր թիմն աշխատում է նպատակ ունենալով օգնել
              հաճախորդներին հասնել հաջողության իրենց տեխնոլոգիական
              նախաձեռնություններում և ապահովել նրանց անվտանգությունն ու
              գոհունակությունը մեր արտադրանքից և ծառայություններից:
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script></script>
<style scoped lang="scss">
.about-us-ov-wwd-container {
  width: 100%;
  padding: 40px 0;

  .about-us-ov-wwd-container-inner {
    padding: 0 10px;
    width: 100%;
    .about-us-ov-wwd-container-tit {
      max-width: 1200px;
      margin: 0 auto;
      width: 100%;
      display: flex;
      gap: 20px;
      justify-content: flex-start;

      .about-us-our-vision,
      .about-us-what-we-do {
        width: 100%;

        img {
          border-radius: 20px;
          pointer-events: none;
          display: block;
          width: 100%;
        }

        h2 {
          margin: 10px 0;
        }
        p {
          color: #676770;
          font-size: 1em;
          line-height: 20px;
        }
      }
    }
  }
}

@media screen and (max-width: 1024px) {
  .about-us-ov-wwd-container {
    padding: 10px 0;
  }

  .about-us-ov-wwd-container-tit {
    gap: 10px !important;
  }
}
@media screen and (max-width: 768px) {
  .about-us-ov-wwd-container-tit {
    flex-direction: column;
    align-items: center;
  }

  .about-us-our-vision,
  .about-us-what-we-do {
    width: 90% !important;
  }
}

@media screen and (max-width: 425px) {
  .about-us-our-vision,
  .about-us-what-we-do {
    width: 100% !important;
  }

  .about-us-ov-wwd-container-inner {
    padding: 0 5px !important;
  }
}
.about-us-company-container {
  padding: 40px 0;
  width: 100%;

  .about-us-company-container-inner {
    width: 100%;
    padding: 0 10px;

    .about-us-company-container-tit {
      max-width: 1200px;
      margin: 0 auto;
      width: 100%;
      height: 100%;
      display: flex;
      gap: 20px;
      flex-direction: row;

      .about-company-left {
        font-size: 1.7em;
        margin-right: 50px;
        text-wrap: nowrap;
      }

      .about-company-right {
        width: 70%;

        p {
          margin-bottom: 10px;
          color: #676770;
          font-size: 1em;
          line-height: 25px;
        }
      }
    }
  }
}

@media screen and (max-width: 1024px) {
  .about-us-company-container {
    padding: 10px 0;
  }

  .about-us-company-container-tit {
    flex-direction: column !important;
    gap: 10px !important;
  }

  .about-company-left {
    width: 100%;
    text-align: center;
  }

  .about-company-right {
    width: 100% !important;
  }
}

@media screen and (max-width: 425px) {
  .about-us-company-container-tit {
    gap: 5px !important;
  }

  .about-us-company-container-inner {
    padding: 0 5px !important;
  }
}

.about-us-header-container {
  width: 100%;
  background-image: url(../../public/assets/img/aboutus/aboutus.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  aspect-ratio: 1 / 0.25;
  max-height: 600px;

  .about-us-header-container-inner {
    width: 100%;
    padding: 0 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    aspect-ratio: 1 / 0.25;

    .about-us-header-container-tit {
      max-width: 1800px;
      margin: 0 auto;
      width: 100%;
      display: flex;
      gap: 20px;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      color: white;
      padding: 50px 0;

      h1 {
        font-size: 3.5em;
        margin: 0;
      }

      p {
        font-size: 1em;
        text-align: center;
        line-height: 20px;
        font-weight: bold;
        letter-spacing: 1px;
        margin-bottom: 20px;
      }

      .button-container {
        display: flex;
        justify-content: center;
        width: 100%;

        button {
          padding: 15px 25px;
          color: white;
          letter-spacing: 2px;
          background-color: #0063d1;
          outline: none;
          border: none;
          border-radius: 5px;
          font-weight: bold;
          cursor: pointer;
          transition: background-color 0.1s;
          font-size: 0.9em;

          &:hover {
            background-color: #0059bc;
          }
        }
      }
    }
  }
}

@media screen and (max-width: 425px) {
  .about-us-header-container-tit {
    gap: 10px !important;
    padding: 20px 0 !important;
  }
  .about-us-header-container-inner {
    padding: 0 5px !important;
  }
}
</style>
