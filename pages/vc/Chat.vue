<template>
    <client-only>
        <CometChatNoSSR></CometChatNoSSR>
    </client-only>
</template>
<script>
import CometChat from '@cometchat-pro/chat'
export default {
    name: "RTBChat",
    ssr: false,
    components: {
        'CometChatNoSSR': () => import('../../CometChatNoSSR.vue')
    },
    mounted() {
        window.CometChat = CometChat
    }
}
</script>