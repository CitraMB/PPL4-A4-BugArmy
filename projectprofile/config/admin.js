module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '98d329caf2d68ffc0b6b29268ba8a7ed'),
  },
});
