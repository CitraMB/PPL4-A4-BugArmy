module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '70ac5e273abde75d14f947ee3f2a1372'),
  },
});
