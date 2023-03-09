<template>
  <div class="historyPanel">
    <label for="utils">Object Controls</label>

    <select name="Object Controls" id="utils">
      <option @click="Copy">Copy Selected Element</option>
      <option @click="Paste">Paste Selected Object</option>
      <option @click="multipleSelect">Select Multiple Object</option>
      <option @click="group">Group Object</option>
      <option @click="unGroup">Ungroup Object</option>
      <option @click="discardSelection">Discard Selection</option>
      <option @click="Edit">Edit Polygon</option>
    </select>
  </div>
  <br />
</template>

<script>
import {
  discardSelection,
  multipleSelect,
  group,
  unGroup,
  Copy,
  Paste,
  Edit,
} from "../utils/utilitySettings";
export default {
  setup() {
    return {
      discardSelection,
      multipleSelect,
      group,
      unGroup,
      Copy,
      Paste,
      Edit,
    };
  },
};
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
</style>
