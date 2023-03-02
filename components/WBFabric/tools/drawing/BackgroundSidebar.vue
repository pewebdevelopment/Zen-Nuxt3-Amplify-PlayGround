<template>
  <div id="sidebar-bg-settings" class="sidebar">
    <a
      href="javascript:void(0)"
      class="closebtn"
      @click="closeBackgroundSettings"
      >&times;</a
    >
    <div>
      <label for="bg-color">Current Color :</label>
      <input type="color" :value="fabricStore.background" id="bg-color" />
    </div>
  </div>
</template>

<script setup>
import { useWBFabric } from "@/stores/wbFabric";
import { changeBackgroundColor } from "@/components/WBFabric/tools/drawing/toolSettings";

const fabricStore = useWBFabric();

onMounted(() => {
  const bgColor = document.getElementById("bg-color");

  bgColor.oninput = function () {
    changeBackgroundColor(this.value);
  };
});

function closeBackgroundSettings() {
  document.getElementById("sidebar-bg-settings").style.width = "0";
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
</style>
