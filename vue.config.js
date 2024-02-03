const { defineConfig } = require("@vue/cli-service");

module.exports = defineConfig({
  transpileDependencies: true,
  chainWebpack: (config) => {
    config
      .plugin('feature-flag')
      .use(require('webpack').DefinePlugin, [
        {
          __VUE_PROD_HYDRATION_MISMATCH_DETAILS__: false,
        },
      ]);
  },
});
