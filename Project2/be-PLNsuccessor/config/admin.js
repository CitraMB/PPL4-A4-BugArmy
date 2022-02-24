module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '66d3dc9d21717736e51efdb0e88ed05f'),
  },
});
