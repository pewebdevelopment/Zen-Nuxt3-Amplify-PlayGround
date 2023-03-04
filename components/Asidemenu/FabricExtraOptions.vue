<template>
  <div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" @click="closeNav">&times;</a>
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#">Clients</a>
    <a href="#">Contact</a>
  </div>
  <SettingsSidebar />
  <BackgroundSidebar />
  <div class="w-[5rem] z-50 absolute left-0 bottom-1">
    <div id="btn-group" class="flex flex-col space-y-4 items-center">
      <button
        class="btn p-2 rounded-full bg-[#101010cc] hover:bg-[#23232366]"
        @click="openBackgroundSettings"
      >
        <SvgIcon type="mdi" :path="mdiFormatColorFill" />
      </button>
      <button
        class="btn p-2 rounded-full bg-[#101010cc] hover:bg-[#23232366]"
        @click="openToolSettings"
      >
        <SvgIcon type="mdi" :path="mdiTools" />
      </button>
      <button
        class="btn p-2 rounded-full bg-[#101010cc] hover:bg-[#23232366]"
        @click="openNav"
      >
        <SvgIcon type="mdi" :path="mdiMenu" />
      </button>
    </div>
  </div>
</template>

<script setup>
import SvgIcon from "@jamescoyle/vue-icon";
import { mdiTools, mdiMenu, mdiFormatColorFill } from "@mdi/js";
import SettingsSidebar from "@/components/WBFabric/tools/drawing/SettingsSidebar.vue";
import BackgroundSidebar from "@/components/WBFabric/tools/drawing/BackgroundSidebar.vue";
import {
  openNav,
  closeNav,
  openToolSettings,
  openBackgroundSettings,
} from "@/components/WBFabric/tools/drawing/toolSettings";

const btnGroup = ref();

onMounted(() => {
  (function () {
    btnGroup.value = document.getElementById("btn-group");

    const btns = btnGroup.value.getElementsByClassName("btn");

    for (let i = 0; i < btns.length; i++) {
      btns[i].addEventListener("click", function () {
        const current = document.getElementsByClassName("active");

        if (current.length > 0) {
          current[0].className = current[0].className.replace(" active", "");
        }

        this.className += " active";
      });
    }
  })();
});
</script>

<style scoped>
/* The sidebar menu */
.sidebar {
  height: 100vh; /* 100% Full-height */
  width: 0; /* 0 width - change this with JavaScript */
  position: fixed; /* Stay in place */
  z-index: 50; /* Stay on top */
  top: 0;
  left: 0;
  background-color: #111; /* Black*/
  overflow-x: hidden; /* Disable horizontal scroll */
  padding-top: 60px; /* Place content 60px from the top */
  transition: 0.5s; /* 0.5 second transition effect to slide in the sidebar */
}

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

/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
#pagetop-container {
  transition: margin-left 0.5s; /* If you want a transition effect */
  padding: 20px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidebar {
    padding-top: 15px;
  }
  .sidebar a {
    font-size: 18px;
  }
}
.active {
  background-color: rgba(35, 35, 35, 0.4);
}
</style>
