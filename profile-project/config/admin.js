module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '0bc1d408671ce4d339f66e172e17ed03'),
  },
});
