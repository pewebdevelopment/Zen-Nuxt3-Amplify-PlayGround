<template>
  <div id="sidebar-bg-settings" class="sidebar">
    <a class="closebtn hover:cursor-pointer" @click="closeBackgroundSettings"
      >&times;</a
    >
    <div class="p-2 space-y-3">
      <div class="pl-1 space-y-1">
        <p>Background</p>
        <!-- <label for="bg-color">Background</label>
        <br />
        <input type="color" :value="fabricStore.background" id="bg-color" /> -->
        <div
          @click="showColorPanel = !showColorPanel"
          class="rounded-full h-10 w-10 bg-white"
          :style="`background-color:${fabricStore.background}`"
        ></div>
        <Transition name="slide-fade">
          <div class="grid grid-rows-14" v-if="showColorPanel">
            <div class="flex" v-for="color in fabricStore.vividColours">
              <div
                v-for="shade in fabricStore.alpha"
                class="h-6 w-6 hover:scale-125 hover:cursor-pointer"
                :style="`background-color:${color + shade}`"
                @click="selectColor(color + shade)"
              ></div>
            </div>
          </div>
        </Transition>
      </div>
      <hr />
      <div>Grid</div>
      <div>
        <label for="line-width">Line Width </label>
        <input
          type="range"
          min="1"
          max="100"
          :value="fabricStore.grid.lineWidth"
          class="grid-slider-width"
          id="line-width"
          list="settings-grid-width"
        />
        <datalist id="settings-grid-width">
          <option>0</option>
          <option>20</option>
          <option>40</option>
          <option>60</option>
          <option>80</option>
          <option>100</option>
        </datalist>
      </div>
      <div>
        <label for="grid-spacing-vertical">Vertical Spacing </label>
        <input
          type="range"
          min="1"
          max="100"
          :value="fabricStore.grid.verticalSpacing"
          class="grid-slider-width"
          id="grid-spacing-vertical"
          list="settings-grid"
        />
        <datalist id="settings-grid-v">
          <option>0</option>
          <option>20</option>
          <option>40</option>
          <option>60</option>
          <option>80</option>
          <option>100</option>
        </datalist>
      </div>
      <div>
        <label for="grid-spacing-horizontal">Horizontal Spacing </label>
        <input
          type="range"
          min="1"
          max="100"
          :value="fabricStore.grid.horizontalSpacing"
          class="grid-slider-width"
          id="grid-spacing-horizontal"
          list="settings-pencil"
        />
        <datalist id="settings-grid-h">
          <option>0</option>
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
  changeBackgroundColor,
  closeBackgroundSettings,
} from "@/components/WBFabric/tools/drawing/toolSettings";

const fabricStore = useWBFabric();
const showColorPanel = ref(false);

onMounted(() => {
  // Background input button
  // const bgColor = document.getElementById("bg-color");

  // bgColor.onchange = function () {
  //   changeBackgroundColor(this.value);
  // };

  const gridSliders = document.getElementsByClassName("grid-slider-width");

  console.log(gridSliders);
});

function selectColor(color) {
  changeBackgroundColor(color);
  showColorPanel.value = !showColorPanel.value;
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

.grid-slider-width {
  width: 100%;
  height: 25px;
  border-radius: 5px;
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: 0.2s;
  transition: opacity 0.2s;
}

.slide-fade-enter-active {
  transition: all 0.2s ease-in;
}

.slide-fade-leave-active {
  transition: all 0.2s ease-out;
}

.slide-fade-enter-from,
.slide-fade-leave-to {
  transform: translateY(20px);
  opacity: 0;
}
</style>
