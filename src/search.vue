<template>
  <!-- header Start-->
  <appHeader></appHeader>
  <!-- header End -->
  <!-- bottom Navigation Bar Start -->
  <bottomNavbar></bottomNavbar>
  <!-- bottom Navigation Bar End -->
  <!-- side Navigation Bar Start -->
  <appSideNavigation></appSideNavigation>
  <!-- side Navigation Bar End -->
  <!-- search mobile Start -->
  <searchMobile></searchMobile>
  <!-- search mobile End -->
</template>
<script>
import bottomNavbar from "./components/appBottomNavigation.vue";
import searchMobile from "./components/appSearchMobile.vue";
import appHeader from "./components/appHeader.vue";
import appSideNavigation from "./components/appSideNavigation.vue";

export default {
  name: "AppSearch",
  components: {
    bottomNavbar,
    searchMobile,
    appHeader,
    appSideNavigation,
  },
};
</script>

<style scoped lang="scss"></style>
