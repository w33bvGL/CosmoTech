<template>
  <!-- header Start-->
  <appHeader></appHeader>
  <!-- header End -->
  <!-- side Navigation Bar Start -->
  <appSideNavigation></appSideNavigation>
  <!-- side Navigation Bar End -->
  <!-- aboutus Start -->
  <appAbout></appAbout>
  <!-- aboutus End -->
  <!-- bottom Navigation Bar Start -->
  <bottomNavbar></bottomNavbar>
  <!-- bottom Navigation Bar End -->
  <!-- app Footer Start -->
  <appFooter></appFooter>
  <!-- app Footer End -->
</template>
<script>
import appHeader from "./components/appHeader.vue";
import appSideNavigation from "./components/appSideNavigation.vue";
import bottomNavbar from "./components/appBottomNavigation.vue";
import appAbout from "./components/appAboutUs.vue";
import appFooter from "./components/appFooter.vue";

export default {
  name: "appAboutUs",
  components: {
    appHeader,
    appSideNavigation,
    bottomNavbar,
    appAbout,
    appFooter,
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
