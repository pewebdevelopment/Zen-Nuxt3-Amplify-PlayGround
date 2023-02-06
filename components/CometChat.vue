<template>
  <div>
    <!-- {{ JSON.stringify(user) }} -->
    <div v-if="init"><CometChatUI /></div>
  </div>
</template>
<script setup lang="ts">
import { CometChatUI } from '../cometchat-pro-vue-ui-kit/CometChatWorkspace/src/components/CometChatUI'; 
import { CometChat } from '@cometchat-pro/chat';
const user = ref()
const init = ref(false)
const props = defineProps<{
  consts: { APP_ID: string, REGION: string, AUTH_KEY: string }
  bar?: number
}>()
onMounted(() => {
  const CONSTS = props.consts
  // const CometChat = (await import('@cometchat-pro/chat')).CometChat;
  let appSetting = new CometChat.AppSettingsBuilder()
    .subscribePresenceForAllUsers()
    .setRegion(CONSTS.REGION)
    .autoEstablishSocketConnection(true)
    .build();
  CometChat.init(CONSTS.APP_ID, appSetting).then(
    () => {
      init.value = true;
      let UID = "SUPERHERO1"
      CometChat.login(UID, CONSTS.AUTH_KEY).then(
        u => {
          user.value = u;
          console.log(u)
          console.log("Login successful.")
        }, error => {
          console.log("Login failed with exception:", error);
        }
      );
    }, error => {
      console.log("error in init", error);
    }
  );
})
</script>
