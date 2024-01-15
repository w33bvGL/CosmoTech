<template>
  <!-- header Start-->
  <appHeader></appHeader>
  <!-- header End -->
  <!-- bottom Navigation Bar Start -->
  <bottomNavbar></bottomNavbar>
  <!-- bottom Navigation Bar End -->
  <!-- title Start -->
  <appTitle></appTitle>
  <!-- title End -->
</template>

<script>
import appHeader from "./components/header/appHeader.vue";
import bottomNavbar from "./components/bottomNavigation/appBottomNavigation.vue";
import appTitle from "./components/title/appTitle.vue";
import "@/components/_root/root.scss";
import "@/components/_root/palette.css";

export default {
  name: "app",
  components: {
    appHeader,
    bottomNavbar,
    appTitle,
  },
};
</script>

<style scoped lang="scss"></style>
