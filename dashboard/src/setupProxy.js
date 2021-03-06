const proxy = require("http-proxy-middleware");

module.exports = function(app) {
  app.use(
    "/api",
    proxy({
      target: "http://api:13500",
      changeOrigin: true,
      pathRewrite: {
        "^/api": "/",
      }
    })
  );
};
