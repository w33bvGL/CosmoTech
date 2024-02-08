<template>
  <div id="mySidenav" class="sidenav" ref="sideNavigation">
    <a href="javascript:void(0)" class="closebtn" @click="closeNav()"
      >&times;</a
    >
    <div class="navigation-menus">
      <router-link to="/search" class="menu-item">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/all.webp"
            alt="all"
          />
          Տեսականի
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </router-link>

      <a href="#" class="menu-item" data-target="nav-value-smartphone">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/smartphone.webp"
            alt="smartphones"
          />
          Սմարթֆոններ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-tablets">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/tablet.webp"
            alt="tablets"
          />
          Պլանշետներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-notebook">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/laptop.webp"
            alt="notebook"
          />
          Նոթբուքեր
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-desktop">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/computers.webp"
            alt="computers"
          />
          Համակարգիչներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-monitor">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/monitors.webp"
            alt="monitors"
          />
          Մոնիտորներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-printer">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/printers.webp"
            alt="printers"
          />
          Տպիչներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-tv">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/smart-TV.webp"
            alt="tv"
          />
          Հեռուստացույցներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-audio-video">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/audio-video.webp"
            alt="audio-video"
          />
          Աուդիո-վիդեո սարքեր
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-camera">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/camera.webp"
            alt="camera"
          />
          Ֆոտոխցիկներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-projector">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/projector.webp"
            alt="projector"
          />
          Պրոեկտորներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-game-console">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/game-console.webp"
            alt="game-console"
          />
          Խաղային կոնսոլներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-drones">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/drones.webp"
            alt="drones"
          />
          Դրոններ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-watch">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/smartwatch.webp"
            alt="watch"
          />
          Ժամացույցներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>

      <a href="#" class="menu-item" data-target="nav-value-accessories">
        <span>
          <img
            src="../../public/assets/img/sideNavigation/accessories.webp"
            alt="accessories"
          />
          Ակսեսուարներ
        </span>
        <img
          src="../../public/assets/img/sideNavigation/right.webp"
          alt="arrow-right"
        />
      </a>
    </div>
  </div>
  <div class="nav-value" id="nav-value">
    <div class="nav-value-content" id="nav-value-smartphone">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('smartphone')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-smartphone.webp"
            alt="category-smartphone"
          />
          <h3>Սմարթֆոններ</h3>
          <p class="about-category">
            Տեխնոլոգիաների աշխարհը ձեր ձեռքերում է: Բացահայտեք մեր սմարթֆոնների
            տեսականին՝ հզոր կատարողականությամբ գերժամանակակից մոդելներից մինչև
            նորարարական հատկանիշներով նորաձև սարքեր: Գտեք ձեր ամենօրյա կյանքի
            կատարյալ ուղեկիցը:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-tablets">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('tablet')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-tablet.webp"
            alt="category-smartphone"
          />
          <h3>Պլանշետներ</h3>
          <p class="about-category">
            Բացահայտեք շարժունակության անսահման հնարավորությունները պլանշետների
            մեր բազմազան ընտրանիով: Գերազանց բարակ և նորաոճ մոդելներից մինչև
            կրեատիվ և աշխատանքի համար բարձրորակ սարքեր, մենք ունենք պլանշետ
            բոլորի համար
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-notebook">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('laptop')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-laptop.webp"
            alt="category-smartphone"
          />
          <h3>Նոթբուքեր</h3>
          <p class="about-category">
            Մուտք գործեք բջջային արտադրողականության աշխարհ՝ նոութբուքերի մեր
            բազմազան տեսականիով: Ուլտրաշարժական նոութբուքերից մինչև հզոր
            մուլտիմեդիա մեքենաներ, մենք առաջարկում ենք ձեր բոլոր կարիքներին
            համապատասխանող լայն ընտրանի
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-desktop">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('desktop')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-desktop.webp"
            alt="category-smartphone"
          />
          <h3>Համակարգիչներ</h3>
          <p class="about-category">
            Բացեք աննախադեպ կատարողականության աշխարհը մեր աշխատասեղաններով: Հզոր
            պրոցեսորները, բարձրորակ գրաֆիկան և տարբեր կոնֆիգուրացիաներ ապահովում
            են ձեր աշխատանքի, խաղի և ստեղծագործության հուսալի հիմքը: Գտեք ձեր
            կարիքներին համապատասխան կատարյալ համակարգիչ մեր բազմազան ընտրանիից:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-monitor">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('monitor')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-monitor.webp"
            alt="category-smartphone"
          />
          <h3>Մոնիտորներ</h3>
          <p class="about-category">
            Բարձրացրեք ձեր աշխատանքի և խաղի փորձը մեր բարձրորակ մոնիտորների
            միջոցով: Վառ գույները, հստակ լուծաչափերը և նորարարական
            տեխնոլոգիաները մեր մոնիտորները դարձնում են հիանալի ընտրություն
            պրոֆեսիոնալ առաջադրանքների, խաղերի և զվարճանքի համար:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-printer">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('printer')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-printer.webp"
            alt="category-smartphone"
          />
          <h3>Տպիչներ</h3>
          <p class="about-category">
            Թվային փորձառությունները իրականություն դարձրեք մեր բարձր
            տեխնոլոգիական տպիչների միջոցով: Տպեք փաստաթղթեր, լուսանկարներ և
            ստեղծագործական նախագծեր հեշտությամբ: Տպիչների մեր ընտրանին ամեն
            անգամ ձեզ կտրամադրի հուսալի, որակյալ արդյունքներ:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-tv">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('smart TV')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-tv.webp"
            alt="category-smartphone"
          />
          <h3>Հեռուստացույցներ</h3>
          <p class="about-category">
            Թարմացրեք ձեր տնային կինոթատրոնը մեր ժամանակակից հեռուստացույցներով:
            Անհավանական լուծաչափը, վառ գույները և նորարարական
            առանձնահատկությունները ստեղծում են ըմբռնող դիտման փորձ: Ընտրեք մեր
            հեռուստացույցներից՝ ձեր տարածքը իսկական ժամանցի կենտրոնի վերածելու
            համար:
          </p>
        </div>
      </div>
    </div>
    <div class="o nav-value-content" id="nav-value-audio-video">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('audio-video')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-audio-video.webp"
            alt="category-smartphone"
          />
          <h3>Աուդիո-վիդեո</h3>
          <p class="about-category">
            Ընկղմվեք բարձրորակ ձայնի և վառ պատկերների աշխարհում մեր աուդիո-վիդեո
            տեղադրումների միջոցով: Ձայնային համակարգեր, բարձրախոսների
            համակարգեր, պրոյեկտորներ և շատ ավելին. մենք ունենք ամեն ինչ ձեր տանը
            կամ գրասենյակում կատարյալ աուդիո-վիզուալ տարածք ստեղծելու համար:
            Զգացեք յուրաքանչյուր նոտա և յուրաքանչյուր պիքսել մեր բարձր
            տեխնոլոգիական սարքերով:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-camera">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('camera')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-camera.webp"
            alt="category-smartphone"
          />
          <h3>Ֆոտոխցիկներ</h3>
          <p class="about-category">
            Նկարեք ամեն պահ մեր բարձր տեխնոլոգիական տեսախցիկների միջոցով:
            Պրոֆեսիոնալ լուսանկարներից մինչև բարձր հստակության տեսագրում, մեր
            տեսախցիկները օգնում են ձեզ գրավել կարևոր պահերը:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-projector">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('projector')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-projector.webp"
            alt="category-smartphone"
          />
          <h3>Պրոեկտորներ</h3>
          <p class="about-category">
            Ձեր տունը վերածեք կինոթատրոնի մեր ժամանակակից պրոյեկտորների միջոցով:
            Վայելեք վառ, հստակ պատկերներ հենց ձեր տանը՝ ստեղծելով հարմարավետ
            տարածք ֆիլմեր, խաղեր և շնորհանդեսներ դիտելու համար:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-game-console">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('game console')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-game-console.webp"
            alt="category-smartphone"
          />
          <h3>Խաղային կոնսոլներ</h3>
          <p class="about-category">
            Սուզվեք հետաքրքիր խաղերի աշխարհ մեր խաղային կոնսուլներով: Բարձր
            կատարողականություն, ցնցող գրաֆիկա և խաղերի լայն ընտրանի՝ այն ամենը,
            ինչ անհրաժեշտ է իսկական խաղացողներին:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-drones">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('drone')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-drones.webp"
            alt="category-smartphone"
          />
          <h3>Դրոններ</h3>
          <p class="about-category">
            Նայեք դեպի երկինք մեր նորարար անօդաչու սարքերով: Նկարեք եզակի պահեր,
            ստեղծեք ցնցող տեսանյութեր և ուսումնասիրեք աշխարհը վերևից մեր որակյալ
            դրոններով:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-watch">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('smartwatch')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-watch.webp"
            alt="category-smartphone"
          />
          <h3>Ժամացույցներ</h3>
          <p class="about-category">
            Կառավարեք ձեր ժամանակը մեր նորաոճ և ֆունկցիոնալ խելացի
            ժամացույցներով: Հետևեք գործունեությանը, ստացեք ծանուցումներ և
            նրբագեղություն հաղորդեք ձեր տեսքին մեր բազմազան խելացի ժամացույցների
            միջոցով:
          </p>
        </div>
      </div>
    </div>
    <div class="nav-value-content" id="nav-value-accessories">
      <div class="nav-values-list">
        <ul>
          <li
            v-for="category in filteredCategories('accessories')"
            :key="category.id"
          >
            <a :href="`#${category.name}`">{{ category.name }}</a>
          </li>
        </ul>
      </div>
      <div class="nav-category-image">
        <div class="nav-category-i">
          <img
            src="../../public/assets/img/sideNavigation/cat-accessories.webp"
            alt="category-smartphone"
          />
          <h3>Ակսեսուարներ</h3>
          <p class="about-category">
            Բացահայտեք աքսեսուարների մեր բազմազան ընտրությունը՝ ձեր սարքերից
            առավելագույն օգուտ քաղելու համար: Նորաոճ մալուխներից և
            լիցքավորիչներից մինչև ձեր սարքավորումները պահելու և պաշտպանելու
            խելացի լուծումները, մենք ունենք այն ամենը, ինչ անհրաժեշտ է ձեր
            հարմարանքները հարմարավետ օգտագործելու համար: Զարդարեք, թարմացրեք և
            լրացրեք ձեր սարքերը մեր որակյալ աքսեսուարներով:
          </p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  data() {
    return {
      categories: [],
    };
  },
  methods: {
    getProductsCategories() {
      axios
        .get("/inc/getProductCategories-template.json")
        .then((response) => {
          this.categories = response.data;
        })
        .catch((error) => {
          console.error("error", error);
          console.log(error.response);
        });
    },
    filteredCategories(categoryType) {
      return this.categories.filter(
        (category) => category.parent_category === categoryType
      );
    },
    openNav() {
      const navValue = document.querySelector(".nav-value");
      const sideNav = document.getElementById("mySidenav");
      if (sideNav.style.width === "0px" || sideNav.style.width === "") {
        sideNav.style.width = "300px";
        document.body.style.overflow = "hidden";
        setTimeout(() => {
          navValue.style.display = "flex";
        }, 250);
      } else {
        this.closeNav();
        document.body.style.overflow = "auto";
        navValue.style.display = "none";
      }
    },
    closeNav() {
      const sideNav = document.getElementById("mySidenav");
      if (sideNav) {
        sideNav.style.width = "0";
        const navValue = document.querySelector(".nav-value");
        document.body.style.overflow = "auto";
        if (navValue) {
          navValue.style.display = "none";
        }
      }
    },
    closeNavigationBar() {
      const hideNavbar = window.matchMedia("(min-width: 769px)");
      const logo = document.getElementById("mySidenav");
      const navValue = document.getElementById("nav-value");

      if (hideNavbar.matches) {
        if (logo && logo.style.display == "flex") {
          if (navValue) {
            navValue.style.display = "none";
          }
        }
      } else {
        if (logo) {
          logo.style.display = "none";
        }
        if (navValue) {
          navValue.style.display = "none";
        }
      }
    },
  },
  mounted() {
    this.getProductsCategories();
    const menuItems = document.querySelectorAll(".navigation-menus a");
    menuItems.forEach(function (menuItem) {
      menuItem.addEventListener("mouseenter", function () {
        const targetId = menuItem.getAttribute("data-target");
        const targetElement = document.getElementById(targetId);

        if (targetElement) {
          document
            .querySelectorAll(".nav-value-content")
            .forEach(function (block) {
              block.style.display = "none";
            });
          targetElement.style.display = "flex";
        }
      });
    });

    // hideNavbar
    let hideNavbar = window.matchMedia("(min-width: 769px)");
    window.onload = this.closeNavigationBar;
    hideNavbar.addListener(this.closeNavigationBar);
  },
};
</script>

<style scoped lang="scss">
.sidenav {
  height: 100%;
  width: 0;
  position: absolute;
  z-index: 910;
  left: 0;
  background-color: #ffffff;
  overflow-y: scroll;
  padding-top: 60px;
  transition: 0.3s;
  -webkit-box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);
  -moz-box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);
  box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);

  &::-webkit-scrollbar {
    width: 6px;
    background-color: #e9e9e981;
  }
}

.navigation-menus {
  display: flex;
  flex-direction: column;
  margin: 10px 20px;
  gap: 5px;

  img {
    width: 25px;
    margin-right: 5px;
  }
}
.nav-value {
  position: absolute;
  background-color: white;
  left: 300px;
  z-index: 999;
  height: 100%;
  display: none;
  box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);
}
.navigation-menus {
  a {
    padding: 8px 8px 8px 10px;
    text-decoration: none;
    font-size: 1em;
    color: black;
    display: flex;
    align-items: center;
    text-wrap: nowrap;
    transition: all 0.1s;
    justify-content: space-between;

    img:nth-child(2) {
      width: 18px;
      right: 0;
      transition: 0.3s all;
      opacity: 0;
      transform: translateX(-20px);
    }

    span {
      display: flex;
      align-items: center;
    }

    &:hover {
      img:nth-child(2) {
        opacity: 1;
        transform: translateY(0px);
      }
    }
  }
}

.sidenav a:hover {
  color: #0063d1;
  background-color: #e9e9e981;
}

.nav-value-content {
  display: none;
  justify-content: space-between;

  .nav-values-list {
    overflow-y: scroll;
    padding-bottom: 200px;
    padding-top: 50px;
    width: 300px;
    &::-webkit-scrollbar {
      width: 6px;
      background-color: #e9e9e981;
    }
    ul {
      width: 100%;
      padding: 10px 20px;
      padding-right: 50px;
      display: flex;
      flex-direction: column;
      gap: 10px;

      li {
        width: 100%;
        transform: translateX(0);
        transition: 0.3s all;
        padding: 5px 10px;
        border-radius: 5px;
        display: flex;
        cursor: pointer;
        a {
          width: 100%;
          transition: 0.1s all;
          text-wrap: nowrap;
        }

        &:hover {
          transform: translateX(10px);
          background-color: rgba(233, 233, 233, 0.5);
          a {
            color: #0063d1;
          }
        }
      }
    }
  }

  .nav-category-image {
    padding: 20px;
    width: 100%;
    width: 250px;
    padding-top: 50px;
    .nav-category-i {
      text-align: left;

      h3 {
        margin-top: 10px;
        text-align: center;
        text-wrap: nowrap;
      }
      .about-category {
        margin-top: 10px;
        font-size: 0.9em;
        color: #666666;
      }
      img {
        width: 100%;
        object-fit: cover;
        object-position: center;
        pointer-events: none;
        position: block;
        border-radius: 20px;
      }
    }
  }
}

.sidenav .closebtn {
  display: flex;
  align-items: center;
  position: absolute;
  color: #999999;
  padding: 0;
  padding: 5px 13px;
  border-radius: 10px;
  margin: 10px;
  top: 0;
  right: 0;
  font-size: 2em;
}

@media screen and (max-width: 1024px) {
  .nav-category-image {
    display: none;
  }
}
</style>
