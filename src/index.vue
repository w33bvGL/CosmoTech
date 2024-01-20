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
  <!-- advantages Start -->
  <appAdvantages></appAdvantages>
  <!-- advantages End -->
</template>
<script>
import appHeader from "./components/appHeader.vue";
import bottomNavbar from "./components/appBottomNavigation.vue";
import appTitle from "./components/appTitle.vue";
import appAdvantages from "./components/appAdvantages.vue";
import "@/components/_root/root.scss";
import "@/components/_root/palette.css";

export default {
  name: "app",
  components: {
    appHeader,
    bottomNavbar,
    appTitle,
    appAdvantages,
  },
};
</script>

<style scoped lang="scss"></style>
