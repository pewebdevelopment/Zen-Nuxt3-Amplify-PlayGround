import { defineStore } from "pinia";

const state = () => ({
  currentRectCount: 0,
  canvas: null,
  showModal: false,
});

const actions = {
  incrCurrentRectCount() {
    this.currentRectCount++;
  },
  toggleModal() {
    this.showModal = !this.showModal
  }
};

const getters = {
};

export const useWBFabric = defineStore("WBFabric", {
  state,
  getters,
  actions,
});
