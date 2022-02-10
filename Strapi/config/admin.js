module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '13cb24c3e7428cf9fdb7bb55ac9bc553'),
  },
});
