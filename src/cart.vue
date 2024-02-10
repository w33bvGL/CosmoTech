<template>
  <!-- header Start-->
  <appHeader></appHeader>
  <!-- header End -->
  <!-- side Navigation Bar Start -->
  <appSideNavigation></appSideNavigation>
  <!-- side Navigation Bar End -->
  <!-- all items in cart Start -->
  <appAllItemsInCart></appAllItemsInCart>
  <!-- all items in cart End -->
  <!-- cart Start -->
  <appProductsCart></appProductsCart>
  <!-- cart End -->
  <!-- bottom Navigation Bar Start -->
  <bottomNavbar></bottomNavbar>
  <!-- bottom Navigation Bar End -->
</template>
<script>
import bottomNavbar from "./components/appBottomNavigation.vue";
import appHeader from "./components/appHeader.vue";
import appAllItemsInCart from "./components/appAllItemsInCart.vue";
import appSideNavigation from "./components/appSideNavigation.vue";
import appProductsCart from "./components/appCart.vue";

export default {
  name: "appCart",
  components: {
    bottomNavbar,
    appHeader,
    appAllItemsInCart,
    appSideNavigation,
    appProductsCart,
  },
};
</script>

<style scoped lang="scss">
@media screen and (max-width: 768px) {
  header {
    display: none;
  }
}
</style>
