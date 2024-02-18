import { createRouter, createWebHashHistory } from "vue-router";
import appIndex from "./index.vue";
import appSearch from "./search.vue";
import appWishlist from "./wishlist.vue";
import appCart from "./cart.vue";
import appProfile from "./profile.vue";
import appAboutUs from "./aboutUs.vue";

const routes = [
  { path: "/", component: appIndex, name: "appIndex" },
  { path: "/search", component: appSearch, name: "appSearch" },
  { path: "/wishlist", component: appWishlist, name: "appWishlist" },
  { path: "/cart", component: appCart, name: "appCart" },
  { path: "/profile", component: appProfile, name: "appProfile" },
  { path: "/aboutUs", component: appAboutUs, name: "appAboutUs" },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

const scrollPositions = {};
router.beforeEach((to, from, next) => {
  if (from.name) {
    scrollPositions[from.fullPath] =
      window.scroolY || document.documentElement.scrollTop;
  }
  next();
});

router.beforeEach((to, from, next) => {
  if (to.path !== from.path) {
    document.body.style.overflow = "auto";
  }
  next();
});

router.afterEach((to) => {
  const savedPosition = scrollPositions[to.fullPath];
  if (savedPosition !== undefined) {
    setTimeout(() => {
      window.scrollTo(0, savedPosition);
    }, 50);
  } else {
    window.scrollTo(0, 0);
  }
});

export default router;
