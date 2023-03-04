<template>
  <div id="sidebar-tool-settings" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" @click="closeToolSettings"
      >&times;</a
    >
    <div class="flex">
      <button
        id="defaultOpen"
        class="tablink"
        @click="(e) => openToolPage('pencil', e.target, '#b7b7b7')"
      >
        Pencil
      </button>
      <button
        class="tablink"
        @click="(e) => openToolPage('highlighter', e.target, '#b7b7b7')"
      >
        Highlighter
      </button>
    </div>

    <div id="pencil" class="tabcontent space-y-8">
      <div>
        <p>Pen Color</p>
        <br />
        <div class="grid grid-cols-4 gap-4">
          <div
            v-for="color in fabricStore.vividColours"
            class="h-10 w-10 rounded-full hover:scale-125 hover:cursor-pointer"
            :style="`background-color:${color}`"
            @click="changePencilColor(color)"
          ></div>
        </div>
      </div>

      <div>
        <label for="pencil-width">Pencil Width </label>
        <input
          type="range"
          min="1"
          max="100"
          :value="fabricStore.pencil.width"
          class="slider-width"
          id="pencil-width"
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

      <div>
        <label for="eraser-width">Eraser Width </label>
        <input
          type="range"
          min="1"
          max="100"
          :value="fabricStore.eraser.width"
          class="slider-width"
          id="eraser-width"
          list="settings-eraser"
        />
        <datalist id="settings-eraser">
          <option>0</option>
          <option>20</option>
          <option>40</option>
          <option>60</option>
          <option>80</option>
          <option>100</option>
        </datalist>
      </div>
    </div>

    <div id="highlighter" class="tabcontent space-y-8">
      <div>
        <p>Highlighter Color</p>
        <br />
        <div class="grid grid-cols-4 gap-4">
          <div
            v-for="color in fabricStore.vividColours"
            class="h-10 w-10 rounded-full hover:scale-125 hover:cursor-pointer"
            :style="`background-color:${color}`"
            @click="changeHighlighterColor(color)"
          ></div>
        </div>
      </div>

      <div>
        <label for="highlighter-width">Highlighter Width </label>
        <input
          type="range"
          min="1"
          max="100"
          :value="fabricStore.highlighter.width"
          class="slider-width"
          id="highlighter-width"
          list="highlighter-width-list"
        />
        <datalist id="highlighter-width-list">
          <option>0</option>
          <option>20</option>
          <option>40</option>
          <option>60</option>
          <option>80</option>
          <option>100</option>
        </datalist>
      </div>

      <div>
        <label for="highlighter-opacity">Highlighter Opacity </label>
        <input
          type="range"
          min="10"
          max="90"
          :value="parseInt(fabricStore.highlighter.opacity)"
          class="slider-opacity"
          id="highlighter-opacity"
          list="highlighter-opacity-list"
        />
        <datalist id="highlighter-opacity-list">
          <option>1</option>
          <option>20</option>
          <option>40</option>
          <option>60</option>
          <option>80</option>
          <option>100</option>
        </datalist>
      </div>
    </div>
  </div>
</template>

<script setup>
import { useWBFabric } from "@/stores/wbFabric";
import {
  changeBrushWidth,
  changeBrushOpacity,
  closeToolSettings,
  openToolPage,
  changePencilColor,
  changeHighlighterColor,
} from "./toolSettings";

const fabricStore = useWBFabric();

onMounted(() => {
  const widthSliders = document.getElementsByClassName("slider-width");
  const opacitySliders = document.getElementsByClassName("slider-opacity");

  for (let i = 0; i < widthSliders.length; i++) {
    const s = widthSliders[i];
    s.oninput = function () {
      changeBrushWidth(s.id, parseInt(this.value));
    };
  }

  for (let i = 0; i < opacitySliders.length; i++) {
    const s = opacitySliders[i];
    s.oninput = function () {
      changeBrushOpacity(s.id, this.value);
    };
  }

  document.getElementById("defaultOpen").click();
});
</script>

<style scoped>
#sidebar-tool-settings {
  overflow: hidden;
}

.sidebar a {
  padding: 8px 8px 8px 24px;
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

.slider-width,
.slider-opacity {
  width: 100%;
  height: 25px;
  border-radius: 5px;
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: 0.2s;
  transition: opacity 0.2s;
}

.tablink {
  background-color: #cfcfcf;
  color: rgb(0, 0, 0);
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  width: 100%;
}

.tablink:hover {
  background-color: #b7b7b7;
}

.tabcontent {
  color: white;
  display: none;
  padding: 16px;
  height: 100%;
}
</style>
