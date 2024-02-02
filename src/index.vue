<template>
  <!-- header Start-->
  <appHeader></appHeader>
  <!-- header End -->
  <!-- side Navigation Bar Start -->
  <appSideNavigation></appSideNavigation>
  <!-- side Navigation Bar End -->
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
  <!-- app Index Products Start -->
  <appIndexProducts></appIndexProducts>
  <!-- app Index Products End -->
  <!-- app Footer Start -->
  <appFooter></appFooter>
  <!-- app Footer End -->
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
import appIndexProducts from "./components/appIndexProducts.vue";
import appSideNavigation from "./components/appSideNavigation.vue";
import appFooter from "./components/appFooter.vue";
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
    appIndexProducts,
    appSideNavigation,
    appFooter,
  },
  mounted() {},
  methods: {},
};
</script>

<style scoped lang="scss">
.mobile-nav-child a:nth-child(1) {
  path {
    stroke: var(--mobile-nav-buttons-active) !important;
  }
}
</style>
