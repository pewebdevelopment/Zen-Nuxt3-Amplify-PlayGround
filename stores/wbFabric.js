import { defineStore } from "pinia";

const state = () => ({
  currentRectCount: 0,
  canvas: null,
  showModal: false,
  drawingMode: false,
  toolSettings: false,
  selectedTool: 'pencil',
  background: '#ffffff',
  pencil: {
    width: 5
  },
  eraser: {
    width: 50
  },
  highlighter: {
    width: 25
  }
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
