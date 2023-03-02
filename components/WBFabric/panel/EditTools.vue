<template>
  <div class="historyPanel">
    <label for="utils">Object Controls</label>

    <select name="Object Controls" id="utils">
      <option @click="Copy(canvas)">Copy Selected Element</option>
      <option @click="Paste(canvas)">Paste Selected Object</option>
      <option @click="multipleSelect(canvas)">Select Multiple Object</option>
      <option @click="group(canvas)">Group Object</option>
      <option @click="unGroup(canvas)">Ungroup Object</option>
      <option @click="discardSelection(canvas)">Discard Selection</option>
      <option @click="Edit(canvas)">Edit Polygon</option>
    </select>

   
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
