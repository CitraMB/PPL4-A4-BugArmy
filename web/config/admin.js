module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '98b0587b1df7614b820892cb6d953f54'),
  },
});
