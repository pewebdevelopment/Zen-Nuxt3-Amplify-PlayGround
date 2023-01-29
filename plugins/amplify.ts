import { defineNuxtPlugin } from "#app";
import { Amplify, Auth } from "aws-amplify";

const awsmobile = require("../aws-exports.js").default;
// aws-exports should be dynamically generated

export default defineNuxtPlugin((nuxtApp) => {
  Amplify.configure(awsmobile);

  return {
    provide: {
      auth: Auth,
    },
  };
});
