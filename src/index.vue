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
  <!-- app Top Categories Start -->
  <appTopBanner></appTopBanner>
  <!-- app Top Categories End -->
  <!-- app Top Featured Products Start -->
  <appTopFeaturedProducts></appTopFeaturedProducts>
  <!-- app Top Featured Products End -->
  <!-- app Message Line Start -->
  <appMessageLine></appMessageLine>
  <!-- app Message Line End -->
  <!-- app Bottom Banners Start -->
  <appBotBanners></appBotBanners>
  <!-- app Bottom Banners End -->
</template>
<script>
import appHeader from "./components/appHeader.vue";
import bottomNavbar from "./components/appBottomNavigation.vue";
import appTitle from "./components/appTitle.vue";
import appAdvantages from "./components/appAdvantages.vue";
import appTopBanner from "./components/appTopBanner.vue";
import appTopFeaturedProducts from "./components/appTopFeaturedProducts.vue";
import appMessageLine from "./components/appMessageLine.vue";
import appBotBanners from "./components/appBotBanners.vue";
import "@/components/_root/root.scss";
import "@/components/_root/palette.css";

export default {
  name: "app",
  components: {
    appHeader,
    bottomNavbar,
    appTitle,
    appAdvantages,
    appTopBanner,
    appTopFeaturedProducts,
    appMessageLine,
    appBotBanners,
  },
};
</script>

<style scoped lang="scss"></style>
