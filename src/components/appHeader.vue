<!-- the html -->
<template>
  <header ref="header">
    <div class="header-content-top">
      <div class="container">
        <div class="header-language-currency-call">
          <ul>
            <li>
              <a href="#" @click="toggleMenu('menu1')" class="open-menu">
                <span class="header-lcc-config-span">
                  Լեզու։ Հայերեն
                  <svg
                    fill="#000000"
                    viewBox="-3.2 -3.2 38.40 38.40"
                    xmlns="http://www.w3.org/2000/svg"
                    transform="rotate(0)"
                  >
                    <path
                      d="M16.003 18.626l7.081-7.081L25 13.46l-8.997 8.998-9.003-9 1.917-1.916z"
                    />
                  </svg>
                </span>
              </a>
              <div id="menu1" class="menu">
                <ul>
                  <li><a href="#">Հայերեն</a></li>
                  <li><a href="#">English</a></li>
                  <li><a href="#">Українська</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a href="#" @click="toggleMenu('menu2')" class="open-menu">
                <span class="header-lcc-config-span">
                  Արժույթ։ AMD
                  <svg
                    fill="#000000"
                    viewBox="-3.2 -3.2 38.40 38.40"
                    xmlns="http://www.w3.org/2000/svg"
                    transform="rotate(0)"
                  >
                    <path
                      d="M16.003 18.626l7.081-7.081L25 13.46l-8.997 8.998-9.003-9 1.917-1.916z"
                    />
                  </svg>
                </span>
              </a>
              <div id="menu2" class="menu">
                <ul>
                  <li><a href="#">AMD ֏</a></li>
                  <li><a href="#">USD $</a></li>
                  <li><a href="#">UAH ₴</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a href="tel:+(374)94 161 331">
                <span class="header-lcc-config-span">
                  Օգնությո՞ւն է անհրաժեշտ: +(374) 94 161 331
                </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="header-about-contact-Faqs">
          <ul>
            <li>
              <a href="#">
                <span class="header-lcc-config-span">Մեր մասին</span>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="header-lcc-config-span">Հետադարձ կապ</span>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="header-lcc-config-span">FAQs</span>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="header-lcc-config-span">Իմ հաշիվը</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="header-content-middle">
      <div class="container">
        <div class="header-container-middle-logo">
          <a href="#">
            <span>
              <img :src="logoPath" alt="CosmoLogo" id="logo" />
            </span>
          </a>
        </div>
        <div class="header-container-middle-search-and-burger-menu">
          <div class="burgermenu" @click="openNav">
            <svg
              width="25px"
              height="25px"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M4 18L20 18"
                stroke="#999999"
                stroke-width="2"
                stroke-linecap="round"
              />
              <path
                d="M4 12L20 12"
                stroke="#999999"
                stroke-width="2"
                stroke-linecap="round"
              />
              <path
                d="M4 6L20 6"
                stroke="#999999"
                stroke-width="2"
                stroke-linecap="round"
              />
            </svg>
          </div>
          <div class="search">
            <form action="">
              <select name="" id="" required>
                <option value="all">Բոլոր Կատեգորիաները</option>
                <option value="smartphone">Սմարթֆոններ</option>
                <option value="tablet">Պլանշետներ</option>
                <option value="laptop">Նոթբուքեր</option>
                <option value="desktop">Համակարգիչներ</option>
                <option value="monitor">Մոնիտորներ</option>
                <option value="printer">Տպիչներ</option>
                <option value="smartTv">Հեռուստացույցներ</option>
                <option value="audio-video">Աուդիո-վիդեո սարքեր</option>
                <option value="camera">Ֆոտոխցիկներ</option>
                <option value="projector">Պրոեկտորներ</option>
                <option value="gameConsole">Խաղային կոնսոլներ</option>
                <option value="networkDevices">Ցանցային Սարքեր</option>
                <option value="drones">Դրոններ</option>
                <option value="smartwatch">Ժամացույցներ</option>
                <option value="accessories">Ակսեսուարներ</option>
              </select>
              <input type="text" required placeholder="Փնտրիր որ գտնես․․․ " />
              <button type="submit" aria-label="search">
                <svg
                  class="w-[30px] h-[30px] text-gray-800 dark:text-white"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 20 20"
                  height="25px"
                  width="25px"
                >
                  <path
                    stroke="white"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
                  />
                </svg>
              </button>
            </form>
          </div>
        </div>
        <div class="header-container-middle-profile-cart-wishlist">
          <div class="container-v">
            <div class="profile container-box">
              <router-link to="/profile" class="content-box-link">
                <div class="image">
                  <svg
                    class="w-[30px] h-[30px] text-gray-800 dark:text-white"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 14 18"
                    height="25px"
                    width="25px"
                  >
                    <path
                      stroke="#1c274c"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M7 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm-2 3h4a4 4 0 0 1 4 4v2H1v-2a4 4 0 0 1 4-4Z"
                    />
                  </svg>
                </div>
                <div class="title">
                  <p class="title-name">Մուտք</p>
                  <span class="vaule">Իմ հաշիվը</span>
                </div>
              </router-link>
            </div>
            <div class="wishlist container-box">
              <router-link to="/wishlist" class="content-box-link">
                <div class="image">
                  <svg
                    class="w-[30px] h-[30px] text-gray-800 dark:text-white"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 21 19"
                    width="25px"
                    height="25px"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M11 4C5.5-1.5-1.5 5.5 4 11l7 7 7-7c5.458-5.458-1.542-12.458-7-7Z"
                    />
                  </svg>
                </div>
                <div class="title">
                  <p class="title-name">Ֆավորիտներ</p>
                  <span class="vaule">Ֆավ․ ցուցակ</span>
                </div>
              </router-link>
            </div>
            <div class="cart container-box">
              <router-link to="/cart" class="content-box-link">
                <div class="image">
                  <svg
                    class="w-[30px] h-[30px] text-gray-800 dark:text-white"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 18 20"
                    height="25px"
                    width="25px"
                  >
                    <path
                      stroke="#1c274c"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M6 15a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm0 0h8m-8 0-1-4m9 4a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm-9-4h10l2-7H3m2 7L3 4m0 0-.792-3H1"
                    />
                  </svg>
                </div>
                <div class="title">
                  <p class="title-name">Քո զամբյուղը</p>
                  <span class="vaule">1450.00 ֏</span>
                </div>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<!-- the vue logic -->
<script>
export default {
  data() {
    return {
      openMenus: [],
      logoPath: "",
      logoMedia: window.matchMedia("(max-width: 1024px)"),
    };
  },
  methods: {
    closeAllMenus() {
      this.openMenus.forEach((openMenuId) => {
        const openMenu = document.getElementById(openMenuId);
        if (openMenu) {
          openMenu.classList.remove("open");
          setTimeout(() => {
            openMenu.style.display = "none";
          }, 50);
        }
      });
      this.openMenus = [];
    },
    toggleMenu(menuId) {
      const menu = document.getElementById(menuId);
      console.log("vahe sis" + menu);
      if (menu) {
        const isOpen = menu.classList.contains("open");
        this.closeAllMenus();
        if (!isOpen) {
          menu.style.display = "block";
          this.openMenus.push(menuId);
          setTimeout(() => {
            menu.classList.add("open");
          }, 50);
        } else {
          menu.classList.remove("open");
          this.openMenus = this.openMenus.filter(
            (openMenuId) => openMenuId !== menuId
          );
          setTimeout(() => {
            menu.style.display = "none";
          }, 50);
        }
      }
    },
    handleClick(event) {
      if (
        event.target.classList.contains("open-menu") ||
        event.target.closest(".open-menu")
      ) {
        event.preventDefault();
        const menuId = event.target.id || event.target.closest(".open-menu").id;
        const menuElement = document.getElementById(menuId);
        if (menuElement) {
          this.toggleMenu(menuElement);
        }
      } else {
        this.closeAllMenus();
      }
    },
    changeImagePath() {
      if (this.logoMedia.matches) {
        this.logoPath = "assets/cosmo-small.webp";
      } else {
        this.logoPath = "assets/cosmo-dark.webp";
      }
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
      document.getElementById("mySidenav").style.width = "0";
      const navValue = document.querySelector(".nav-value");
      document.body.style.overflow = "auto";
      navValue.style.display = "none";
    },
  },
  mounted() {
    this.changeImagePath();
    this.logoMedia.addListener(this.changeImagePath);
  },
};
</script>

<!--the scss-->
<style scoped lang="scss">
header {
  width: 100%;
  padding: 0;
  margin: 0;
  display: flex;
  justify-content: center;
  flex-direction: column;
  border-bottom: 1px solid var(--header-child-border-color) !important;
  box-shadow: 0 3px 5px rgba(0, 0, 0, 0.05) !important;
  background-color: var(--header-background-color);
}

// header-content-top Start
.header-content-top {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 1px solid var(--header-child-border-color) !important;

  .container {
    padding: 0 10px;
    max-width: 1800px;
    width: 100%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    font-size: 0.8em;
  }

  ul {
    display: flex;

    :hover span {
      color: var(--header-child-ul-li-hover-color);
    }

    :hover svg {
      fill: var(--header-child-ul-li-hover-color);
    }
  }

  ul li {
    display: flex;
    cursor: pointer;
    transition: 0.2s;
    align-items: center;
  }

  span {
    margin: 10px 0;
    border-right: 1px solid var(--header-child-ul-li-border-color);
    padding: 2px 20px;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    color: var(--header-child-top-a-color);
  }

  ul li:first-child .header-lcc-config-span {
    padding-left: 0 !important;
  }

  ul li:last-child .header-lcc-config-span {
    padding-right: 0 !important;
    border: none !important;
  }

  ul li svg {
    width: 15px;
    margin-left: 10px;
    display: block;
    pointer-events: none;
  }
}

// header-content-top End

// header-content-middle Start
.header-content-middle {
  width: 100%;
  padding: 10px 0;

  .container {
    padding: 0 10px;
    max-width: 1800px;
    width: 100%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
  }
}

.header-container-middle-logo {
  display: block;
  margin: 5px 0;

  img {
    height: 60px !important;
    pointer-events: none;
    position: relative;
  }

  a,
  span {
    width: 100%;
    display: block;
    max-height: 60px !important;
    height: 100%;
  }
}

.header-container-middle-search-and-burger-menu {
  width: 100%;
  margin: 5px 0;
  padding: 0 20px;
  display: flex;
  align-items: center;

  .burgermenu {
    padding: 10px 20px;
    display: flex;
    align-items: center;
    cursor: pointer;
    &:hover path {
      stroke: var(--header-child-middle-burger-hov);
    }
  }

  .search {
    height: 100%;
    width: 100%;
    display: block;
    display: flex;
    align-items: center;

    form {
      width: 100%;
      display: flex;
      margin: 0 auto;
      align-items: center;

      input {
        color: var(--header-child-middle-search-input-color);
        vertical-align: top;
        width: 100%;
        height: 50px;
        border: none;

        line-height: inherit;
        text-align: inherit;
        text-transform: inherit;
        background-color: var(--color-white);
        padding: 10px 20px;
        position: relative;
        z-index: 1;
        box-shadow: none !important;
        -webkit-transition: none;
        -moz-transition: none;
        -o-transition: none;
        transition: none;
        outline: none;
        border: 2px solid var(--header-child-middle-search-bar-border-color);
        border-radius: 2px;
        border-right: none;
        border-left: none;
      }

      select {
        border: none;
        outline: none;
        padding: 10px 20px;
        color: var(--header-child-middle-search-select-color);
        vertical-align: top;
        height: 50px;
        border: none;

        line-height: inherit;
        text-align: inherit;
        text-transform: inherit;
        background-color: transparent !important;
        padding: 10px 20px;
        position: relative;
        z-index: 1;
        box-shadow: none !important;
        -webkit-transition: none;
        -moz-transition: none;
        -o-transition: none;
        transition: none;
        border-top-left-radius: 5px 5px;
        border-bottom-left-radius: 5px 5px;
        border: 2px solid var(--header-child-middle-search-select-border);
        border-right: none;
      }

      button {
        height: 100%;
        outline: none;
        border: none;
        max-height: 50px;
        height: 50px;
        min-width: 50px;
        width: 50px;
        background-color: var(--header-child-middle-search-button);
        cursor: pointer;
        display: flex;
        z-index: 1;
        align-items: center;
        justify-content: center;
        transition: 0.1s;
        border-top-right-radius: 5px 5px;
        border-bottom-right-radius: 5px 5px;

        &:hover {
          background-color: var(--header-child-middle-button-hov);
        }
      }
    }
  }
}

.header-container-middle-profile-cart-wishlist {
  margin: 5px 0;
  display: block;

  .container-v {
    display: flex;
    width: 100%;
    align-items: center;
    height: 100%;
    font-size: 0.8em;

    .content-box-link {
      display: flex;
      align-items: center;
      justify-content: space-between;
      width: 100%;
    }

    .container-box {
      padding: 0 10px;
      cursor: pointer;

      .image {
        margin-right: 10px;
        display: flex;
        align-items: center;
        pointer-events: none;
      }

      .title {
        width: 100%;
        color: var(--header-child-middle-title-font-color);
        display: flex;
        flex-direction: column;
        justify-content: center;
        white-space: nowrap;
        .title-name {
          opacity: 0.9;
          letter-spacing: 1px;

          white-space: nowrap;
        }

        span {
          margin-top: 2px;
        }
      }

      &:hover .title {
        color: var(--header-child-middle-content-box-hov);
      }

      &:hover .title .title-name {
        color: var(--header-child-middle-content-box-hov);
      }
    }
  }

  .container-v .container-box:first-child {
    padding-left: 0;
  }

  .container-v .container-box:last-child {
    padding-right: 0;
  }
}

.menu {
  display: none;
  position: absolute;
  top: 40px;
  width: 200px;
  background-color: var(--header-language-currency-menu);
  border: 1px solid var(--header-language-currency-border-color);
  color: white;
  padding: 20px;
  opacity: 0;
  z-index: 999;
  transform: translateY(20px);
  border-top: none;
  transition: transform 0.2s, opacity 0.2s;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;

  ul {
    display: flex;
    flex-direction: column;
    width: 100%;
    gap: 10px;

    a {
      transition: 0.2s;
      transform: translateX(0px);
    }

    li {
      width: 100%;

      &:hover a {
        color: var(--header-language-currency-a-hov);
        transform: translateX(10px);
      }
    }
  }
}

.menu.open {
  opacity: 1;
  transform: translateY(0px);
}

// media
@media screen and (max-width: 1440px) {
  .container-box {
    .title {
      display: none !important;
    }

    .image {
      margin: 0 !important;
    }
  }
}

@media screen and (max-width: 1024px) {
  .header-content-top {
    display: none;
  }

  .search {
    select {
      display: none;
    }

    input {
      border-left: 2px solid var(--header-child-middle-search-bar-border-color) !important;
    }
  }
}
@media screen and (max-width: 768px) {
  header {
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 20px;
    background-color: var(--header-background-color-mobile) !important;
    position: sticky;
    top: 0;
    z-index: 900;
    border: none !important;
  }

  .header-container-middle-profile-cart-wishlist {
    display: none;
  }

  .header-container-middle-search-and-burger-menu {
    padding-right: 0 !important;
    padding-left: 0 !important;
    margin: 30px 0;
    margin-bottom: 5px;

    .burgermenu {
      display: none;
    }
  }

  .header-container-middle-logo {
    display: none;
  }

  .search {
    input {
      border-bottom-left-radius: 10px !important;
      border-top-left-radius: 10px !important;
      border-bottom-right-radius: 0 !important;
      border-top-right-radius: 0 !important;
      border-color: white !important;
    }
    button {
      border-bottom-right-radius: 10px !important;
      border-top-right-radius: 10px !important;
      background-color: var(--color-white) !important;
      border-color: white !important;

      path {
        stroke: var(--header-button-search-stroke-color);
      }
    }
  }
}
@media screen and (max-width: 425px) {
  //
}
@media screen and (max-width: 320px) {
}
</style>
