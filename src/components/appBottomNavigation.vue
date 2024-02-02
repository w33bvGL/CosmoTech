<template>
  <nav class="mobile-nav">
    <div class="nav-container">
      <div class="mobile-nav-child">
        <a href="#" class="bloc-icon">
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
        </a>
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
        <a href="#" class="bloc-icon">
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
        </a>
        <a href="#" class="bloc-icon">
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
        </a>
      </div>
    </div>
  </nav>
</template>

<script></script>

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
