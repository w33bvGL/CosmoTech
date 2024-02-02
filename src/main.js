// main.js
import { createApp } from "vue";
import vApp from "./app.vue";
import router from "./router.js";

const app = createApp(vApp);
app.use(router);
app.mount("#app");
