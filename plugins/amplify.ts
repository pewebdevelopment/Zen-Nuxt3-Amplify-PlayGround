import { defineNuxtPlugin } from "#app";
import { Amplify, Auth } from "aws-amplify";
import awsmobile from "../aws-exports.js";

// aws-exports should be dynamically generated

export default defineNuxtPlugin((nuxtApp) => {
  Amplify.configure(awsmobile);

  return {
    provide: {
      auth: Auth,
    },
  };
});
