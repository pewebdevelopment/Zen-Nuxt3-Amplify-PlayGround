<template>
  <div class="historyPanel">
    <button @click="Copy">Copy selected element</button>
    <button @click="Paste"> paste selected object</button>
  </div>
  <br />
</template>

<script>
export default {
  props: ['canvas'],
  setup(props) {
    let _clipboard = ref({})

    function Copy() {
      props.canvas.getActiveObject().clone(function (cloned) {
        _clipboard.value = cloned;
      });
    }

    function Paste() {
      // clone again, so you can do multiple copies.
      _clipboard.value.clone(function (clonedObj) {
        props.canvas.discardActiveObject();
        clonedObj.set({
          left: clonedObj.left + 10,
          top: clonedObj.top + 10,
          evented: true,
        });
        if (clonedObj.type === 'activeSelection') {
          // active selection needs a reference to the canvas.
          clonedObj.canvas = props.canvas;
          clonedObj.forEachObject(function (obj) {
            props.canvas.add(obj);
          });
          // this should solve the unselectability
          clonedObj.setCoords();
        } else {
          props.canvas.add(clonedObj);
        }
        _clipboard.value.top += 10;
        _clipboard.value.left += 10;
        props.canvas.setActiveObject(clonedObj);
        props.canvas.requestRenderAll();
      });
    }
    return { Copy, Paste }
  }
}
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

button{
  background-color: aquamarine;
  padding: 4px;
  margin: 4px;
  width: 100%;
  border: 1px solid black;
  border-radius: 6px;
}
</style>
