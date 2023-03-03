<template>
  <div id="main">
    <DragToolbar v-if="fabricStore.drawingMode" />
    <canvas id="canvas-fabric" ref="fabricJS"></canvas>
    <div id="panels-container" class="flex flex-col gap-5">
      <EditTools :canvas="fabricStore.getCanvas" />
    </div>
  </div>
</template>

<script setup>
import { fabric } from "fabric";
import applySettings from "./utils/customSettings";
import DragToolbar from "./tools/drawing/DragToolbar.vue";
import { useWBFabric } from "@/stores/wbFabric";
import EditTools from "./panel/EditTools.vue";

const fabricJS = ref(null);
const fabricStore = useWBFabric();

onMounted(() => {
  const canvas = new fabric.Canvas(fabricJS.value.id);
  fabricStore.setCanvas(canvas)

  // To apply custom settings on canvas
  applySettings(canvas);
});
</script>

<style scoped>
body {
  margin: 0;
  padding: 0;
}

#main {
  margin: 0;
  padding: 0;
  position: fixed;
  width: 100vw;
  height: 100vh;
}
</style>
