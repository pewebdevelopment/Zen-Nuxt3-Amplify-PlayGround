<template>
    <div
      v-if="Object.keys(user).length"
      :style="{ width: `100%`, height: '100vh' }">
      <client-only>
        <comet-chat-uI />
      </client-only>
    </div>
  </template>
  
  <script>
  import { CometChatUI } from "./pages/cometchat-pro-vue-ui-kit/CometChatWorkspace/src";
  //import { COMETCHAT_CONSTANTS } from './consts';
  
  export default {
    name: "CommetChat",
    ssr: false,
    components: {
      CometChatUI,
    },
    data: () => ({
      user: {},
      chatId: "231496f7c6ed7937",
      region: "EU",
      authKey: "04c60b49108ffdac298fef518b334260b9c5e7f4",
    }),
    mounted() {
      const appSetting = new window.CometChat.AppSettingsBuilder()
        .subscribePresenceForAllUsers()
        .setRegion(this.region)
        .build();
      window.CometChat.init(this.chatId, appSetting)
        .then(() => {
          const UID = "SUPERHERO1";
          const apiKey = this.authKey;
          window.CometChat.login(UID, apiKey)
            .then((user) => {
              this.user = user;
              console.log(user);
            })
            .catch((error) => console.log("Login failed with exception:", error));
          // You can now call login function.
        })
        .catch((error) =>
          console.log("Initialization failed with error:", error)
        );
    },
  };
  </script>