// router.js
import { createRouter, createWebHashHistory } from "vue-router";
import appIndex from "./index.vue";
import appSearch from "./search.vue";

export default createRouter({
  history: createWebHashHistory(),
  routes: [
    { path: "/", component: appIndex },
    { path: "/search", component: appSearch },
  ],
});
