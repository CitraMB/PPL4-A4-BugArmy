module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'c34272de1cb710e6a40e30135ffb6edd'),
  },
});
