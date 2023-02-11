<script setup>
import { computed } from "vue";
import { mdiForwardburger, mdiBackburger, mdiMenu } from "@mdi/js";
import { useRouter } from "vue-router";
import menuAsideFabric from "@/configs/menuAsideFabric";
import menuNavBar from "@/configs/menuNavBar.js";
import { useMainStore } from "@/stores/main.js";
import { useLayoutStore } from "@/stores/layout.js";
import { useStyleStore } from "@/stores/style.js";
import BaseIcon from "@/components/Display/BaseIcon.vue";
import FormControl from "@/components/Forms/FormControl.vue";
import NavBar from "@/components/NavBar/NavBar.vue";
import FabricAsideMenu from "@/components/Asidemenu/FabricAsideMenu.vue";
import NavBarItemPlain from "@/components/NavBar/NavBarItemPlain.vue";
import { useAuthStore } from "@/stores/authStore";
import { useWBFabric } from "@/stores/wbFabric";
import Modal from "../components/WBFabric/utils/Modal.vue";
import { handleSubmit } from "../components/WBFabric/tools/imageToPdf";

useMainStore().setUser({
  name: "Zenith Physics",
  email: "zenith@physics.com",
  avatar:
    "https://avatars.dicebear.com/api/avataaars/example.svg?options[top][]=shortHair&options[accessoriesChance]=93",
});

const layoutAsidePadding = computed(() =>
  layoutStore.isAsideLgActive ? "lg:pl-20" : "xl:pl-20"
);

const styleStore = useStyleStore();
const layoutStore = useLayoutStore();
const fabricStore = useWBFabric();
const router = useRouter();
const AuthStore = useAuthStore();

router.beforeEach(() => {
  layoutStore.isAsideMobileExpanded = false;
});

const menuClick = (event, item) => {
  console.log("Event:", event);
  console.log("Item:", item);

  if (item.isToggleLightDark) {
    styleStore.setDarkMode();
  }

  if (item.isLogout) {
    AuthStore.logout();
    // console.log("Clicked On Logout");
    router.push("/auth/login");
  }

  switch (item.id) {
    case 1:
      console.log("id", 1);
      break;
    case 2:
      // console.log("id", 2);
      fabricStore.toggleModal();
      break;

    case 3:
      console.log("id", 3);
      break;

    case 4:
      console.log("id", 4);
      break;

    case 5:
      console.log("id", 5);
      break;

    case 6:
      console.log("id", 6);
      break;

    default:
  }
};
</script>

<template>
  <div>
    <div
      :class="{
        dark: styleStore.darkMode,
        'overflow-hidden lg:overflow-visible':
          layoutStore.isAsideMobileExpanded,
      }"
    >
      <div
        :class="[
          layoutAsidePadding,
          { 'ml-60 lg:ml-0': layoutStore.isAsideMobileExpanded },
        ]"
        class="pt-14 min-h-screen w-screen transition-position lg:w-auto bg-gray-50 dark:bg-slate-800 dark:text-slate-100"
      >
        <!-- The  Navbar -->
        <NavBar
          :menu="menuNavBar"
          :class="[
            layoutAsidePadding,
            { 'ml-60 lg:ml-0': layoutStore.isAsideMobileExpanded },
          ]"
          @menu-click="menuClick"
        >
          <NavBarItemPlain
            display="flex lg:hidden"
            @click.prevent="layoutStore.asideMobileToggle()"
          >
            <BaseIcon
              :path="
                layoutStore.isAsideMobileExpanded
                  ? mdiBackburger
                  : mdiForwardburger
              "
              size="24"
            />
          </NavBarItemPlain>
          <NavBarItemPlain
            display="hidden lg:flex xl:hidden"
            @click.prevent="layoutStore.asideLgToggle()"
          >
            <BaseIcon
              :path="layoutStore.isAsideLgActive ? mdiBackburger : mdiMenu"
              size="24"
            />
          </NavBarItemPlain>
          <NavBarItemPlain use-margin>
            <FormControl
              placeholder="Search (ctrl+k)"
              ctrl-k-focus
              transparent
              borderless
            />
          </NavBarItemPlain>
        </NavBar>
        <!-- The  Premium Aside Menu -->
        <FabricAsideMenu :menu="menuAsideFabric" @menu-click="menuClick" />
        <Teleport to="body">
          <!-- use the modal component, pass in the prop -->
          <modal :show="fabricStore.showModal">
            <template #header>
              <h3>Import PDF</h3>
            </template>
            <template #body>
              <div>
                <input id="input-pdf" type="file" accept="application/pdf" />
              </div>
              <br />
              <button
                class="modal-default-button"
                @click="fabricStore.toggleModal"
              >
                Cancel
              </button>
            </template>
          </modal>
        </Teleport>
        <slot />
      </div>
    </div>
  </div>
</template>

<style>
.modal-default-button {
  margin: auto;
}
</style>
