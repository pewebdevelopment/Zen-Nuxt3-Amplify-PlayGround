<template>
    <div>
        <CometChat :consts="CONSTS" />
    </div>
</template>
<script setup lang="ts">

import CometChat from '~~/components/CometChat.vue'
const CONSTS = {
    APP_ID: "231496f7c6ed7937",
    REGION: "EU",
    AUTH_KEY: "04c60b49108ffdac298fef518b334260b9c5e7f4"
}
</script>