module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '72ed26e34f9958123d8931c1e8f98ffd'),
  },
});
