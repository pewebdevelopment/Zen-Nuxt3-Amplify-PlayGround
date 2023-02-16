import { defineStore } from "pinia";

const state = () => ({
  currentRectCount: 0,
  canvas: null,
  showModal: false,
  drawingMode: false
});

const actions = {
  incrCurrentRectCount() {
    this.currentRectCount++;
  },
  toggleModal() {
    this.showModal = !this.showModal
  },
  toggleDrawingMode() {
    this.drawingMode = !this.drawingMode
  }
};

const getters = {
};

export const useWBFabric = defineStore("WBFabric", {
  state,
  getters,
  actions,
});
