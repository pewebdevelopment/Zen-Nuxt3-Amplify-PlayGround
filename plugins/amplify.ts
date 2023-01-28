import { defineNuxtPlugin } from "#app";
import { Amplify, Auth } from "aws-amplify";
import awsExports from "@/aws-exports";

// aws-exports should be dynamically generated

export default defineNuxtPlugin((nuxtApp) => {
  Amplify.configure(awsExports);

  return {
    provide: {
      auth: Auth,
    },
  };
});
