import { createRouter, createWebHashHistory } from "vue-router";
import appIndex from "./index.vue";
import appSearch from "./search.vue";
import appWishlist from "./wishlist.vue";
import appCart from "./cart.vue";
import appProfile from "./profile.vue";

const router = createRouter({
  history: createWebHashHistory(),
  routes: [
    { path: "/", component: appIndex, name: "appIndex" },
    { path: "/search", component: appSearch, name: "appSearch" },
    { path: "/wishlist", component: appWishlist, name: "appWishlist" },
    { path: "/cart", component: appCart, name: "appCart" },
    { path: "/profile", component: appProfile, name: "appProfile" },
  ],
});

router.beforeEach((to, from, next) => {
  if (to.path !== from.path) {
    document.body.style.overflow = "auto";
  }
  next();
});

export default router;
