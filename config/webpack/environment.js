const { environment } = require("@rails/webpacker");
environment.plugins.prepend(
  "Provide",
  new webpack.pluginProvider({
    $: "jquery",
    jQuery: "jQuery",
    "window.jQuery": "jQuery",
  })
);
module.exports = environment;
