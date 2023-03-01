<template>
  <div class="historyPanel">
    <button @click="Copy(canvas)">Copy Selected Element</button>
    <button @click="Paste(canvas)">Paste Selected Object</button>
    <button @click="multipleSelect(canvas)">Select Multiple Object</button>
    <button @click="group(canvas)">Group Object</button>
    <button @click="unGroup(canvas)">Ungroup Object</button>
    <button @click="discardSelection(canvas)">Discard Selection</button>
    <button @click="Edit(canvas)">Edit Polygon</button>
  </div>
  <br />
</template>

<script>
import { discardSelection, multipleSelect, group, unGroup, Copy, Paste, Edit } from '../utils/utilitySettings'
export default {
  props: ['canvas'],
  setup() {
    return { discardSelection, multipleSelect, group, unGroup, Copy, Paste, Edit }
  }
}
</script>

<style scoped>
.historyPanel {
  position: absolute;
  display: flex;
  flex-direction: column;
  top: 230px;
  left: 6px;
  padding: 10px;
  border-radius: 5px;
}

button {
  background-color: aquamarine;
  padding: 4px;
  margin: 4px;
  width: 100%;
  border: 1.5px solid black;
  border-radius: 6px;
}
</style>
