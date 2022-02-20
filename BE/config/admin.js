module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '7c98ef4ced99ccddf7500feb55c71642'),
  },
});
