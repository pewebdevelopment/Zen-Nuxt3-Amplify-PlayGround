<template>
  <div id="sidebar-tool-settings" class="sidebar">
    tools settings
    <br />
    <div class="slidecontainer">
      <label for="fader-pencil">Width </label>
      <input
        type="range"
        min="1"
        max="100"
        :value="fabricStore.pencil.width"
        class="slider"
        id="fader-pencil"
        list="settings-pencil"
      />
      <datalist id="settings-pencil">
        <option>0</option>
        <option>20</option>
        <option>40</option>
        <option>60</option>
        <option>80</option>
        <option>100</option>
      </datalist>
    </div>

    <a href="javascript:void(0)" class="closebtn" @click="closeToolSettings"
      >&times;</a
    >
  </div>
</template>

<script setup>
import { useWBFabric } from "@/stores/wbFabric";
import { changeBrushWidth } from "./toolSettings";

const fabricStore = useWBFabric();

function closeToolSettings() {
  document.getElementById("sidebar-tool-settings").style.width = "0";
  document.getElementById("pagetop-container").style.marginLeft = "0";
  const current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
}
</script>

<style scoped>
.sidebar a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.sidebar .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

.slider {
  width: 100%;
  height: 25px;
  border-radius: 5px;
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: 0.2s;
  transition: opacity 0.2s;
}

.bgColor label {
  padding: 10px;
}
</style>
