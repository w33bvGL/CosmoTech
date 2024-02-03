<template>
  <nav class="mobile-nav">
    <div class="nav-container">
      <div class="mobile-nav-child">
        <router-link to="/" class="bloc-icon">
          <svg
            class="active-menu"
            aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 20 20"
          >
            <path
              stroke="currentColor"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="1.5"
              d="M3 8v10a1 1 0 0 0 1 1h4v-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v5h4a1 1 0 0 0 1-1V8M1 10l9-9 9 9"
            />
          </svg>
        </router-link>
        <router-link to="/wishlist" class="bloc-icon">
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
        </router-link>
        <router-link to="/search" class="bloc-icon">
          <svg
            class="w-[30px] h-[30px] text-gray-800 dark:text-white"
            aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 20 20"
          >
            <path
              stroke="currentColor"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="1.5"
              d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
            />
          </svg>
        </router-link>
        <router-link to="/cart" class="bloc-icon">
          <svg
            class="w-[30px] h-[30px] text-gray-800 dark:text-white"
            aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 18 20"
          >
            <path
              stroke="currentColor"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="1.5"
              d="M6 15a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm0 0h8m-8 0-1-4m9 4a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm-9-4h10l2-7H3m2 7L3 4m0 0-.792-3H1"
            />
          </svg>
        </router-link>
        <router-link to="/profile" class="bloc-icon">
          <svg
            class="w-[30px] h-[30px] text-gray-800 dark:text-white"
            aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 14 18"
          >
            <path
              stroke="currentColor"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="1.5"
              d="M7 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm-2 3h4a4 4 0 0 1 4 4v2H1v-2a4 4 0 0 1 4-4Z"
            />
          </svg>
        </router-link>
      </div>
    </div>
  </nav>
</template>
<script>
export default {
  watch: {
    $route() {
      this.updateStyles();
    },
  },

  mounted() {
    this.updateStyles();
  },

  methods: {
    updateStyles() {
      const pathIndex = this.getPathIndex(this.$route.name);
      this.resetStyles();
      this.applyStyles(pathIndex);
    },

    getPathIndex(routeName) {
      switch (routeName) {
        case "appIndex":
          return 1;
        case "appWishlist":
          return 2;
        case "appSearch":
          return 3;
        case "appCart":
          return 4;
        case "appProfile":
          return 5;
        default:
          return 1;
      }
    },

    resetStyles() {
      this.$el.querySelectorAll(".mobile-nav-child a path").forEach((path) => {
        path.style.stroke = "gray";
      });
    },

    applyStyles(pathIndex) {
      const selector = `.mobile-nav-child a:nth-child(${pathIndex}) path`;
      const selectedPath = this.$el.querySelector(selector);

      if (selectedPath) {
        selectedPath.style.stroke = "#0063d1";
      }
    },
  },
};
</script>

<style scoped lang="scss">
.mobile-nav {
  background-color: var(--mobile-nav-background-color);
  position: fixed;
  bottom: 0;
  width: 100%;
  display: none;
  box-shadow: 0 3px 5px rgba(0, 0, 0, 0.05);
  z-index: 900;

  .nav-container {
    width: 100%;
    margin: 10px 0;
  }

  .mobile-nav-child {
    width: 100%;
    display: flex;
    justify-content: space-between;
    padding: 0 10px;

    a {
      flex-grow: 1;
      text-align: center;
      padding: 15px 0;
      transition: background-color 0.3s ease;
      border-radius: 50px / 50px;
      overflow: hidden;

      .bloc-icon {
        display: flex;
        justify-content: center;
        align-items: center;
        transform: translateY(100%);
        transition: transform 0.3s ease;
      }

      &:hover {
        background-color: var(--mobile-nav-buttons-hov);

        .bloc-icon {
          transform: translateY(0);
        }
      }
    }

    path {
      stroke: gray;
    }

    svg {
      height: 25px;
      width: 25px;
    }
  }
}

@media screen and (max-width: 768px) {
  .mobile-nav {
    display: flex;
  }
}
</style>
