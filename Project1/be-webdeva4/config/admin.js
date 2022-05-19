module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'a1ff28ad5cdbda820183c0be675173ca'),
  },
});
