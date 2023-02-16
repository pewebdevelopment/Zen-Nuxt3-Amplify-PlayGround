<template>
  <div>
    <div id="toolbar">
      <div id="toolbarheader">
        <SvgIcon type="mdi" :path="mdiDotsHorizontal" />
      </div>
      <div id="btn-group" class="vertical">
        <button class="btn" @click="selectPencil">
          <SvgIcon type="mdi" :path="mdiPencil" />
        </button>
        <button class="btn" @click="selectEraser">
          <SvgIcon type="mdi" :path="mdiEraser" />
        </button>
        <button class="btn" @click="selectHighlighter">
          <SvgIcon type="mdi" :path="mdiMarker" />
        </button>
        <button class="btn active" @click="selectCursor">
          <SvgIcon type="mdi" :path="mdiCursorDefaultOutline" />
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import SvgIcon from "@jamescoyle/vue-icon";
import {
  mdiPencil,
  mdiEraser,
  mdiMarker,
  mdiDotsHorizontal,
  mdiCursorDefaultOutline,
} from "@mdi/js";
import {
  selectPencil,
  selectCursor,
  selectEraser,
  selectHighlighter,
} from "./toolSettings";

onMounted(() => {
  // Make the DIV element draggable:
  dragElement(document.getElementById("toolbar"));

  function dragElement(elmnt) {
    let pos1 = 0,
      pos2 = 0,
      pos3 = 0,
      pos4 = 0;
    if (document.getElementById(elmnt.id + "header")) {
      // if present, the header is where you move the DIV from:
      document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
    } else {
      // otherwise, move the DIV from anywhere inside the DIV:
      elmnt.onmousedown = dragMouseDown;
    }

    function dragMouseDown(e) {
      e = e || window.event;
      e.preventDefault();
      // get the mouse cursor position at startup:
      pos3 = e.clientX;
      pos4 = e.clientY;
      document.onmouseup = closeDragElement;
      // call a function whenever the cursor moves:
      document.onmousemove = elementDrag;
    }

    function elementDrag(e) {
      e = e || window.event;
      e.preventDefault();
      const winW =
          document.documentElement.clientWidth || document.body.clientWidth,
        winH =
          document.documentElement.clientHeight || document.body.clientHeight,
        maxX = winW - elmnt.offsetWidth - 1,
        maxY = winH - elmnt.offsetHeight - 1;

      // calculate the new cursor position:
      pos1 = pos3 - e.clientX;
      pos2 = pos4 - e.clientY;
      pos3 = e.clientX;
      pos4 = e.clientY;

      // set the element's new position:
      if (elmnt.offsetTop - pos2 <= maxY && elmnt.offsetTop - pos2 >= 0) {
        elmnt.style.top = elmnt.offsetTop - pos2 + "px";
      }
      if (elmnt.offsetLeft - pos1 <= maxX && elmnt.offsetLeft - pos1 >= 0) {
        elmnt.style.left = elmnt.offsetLeft - pos1 + "px";
      }
    }

    function closeDragElement() {
      // stop moving when mouse button is released:
      document.onmouseup = null;
      document.onmousemove = null;
    }
  }

  (function () {
    const btnGroup = document.getElementById("btn-group");

    const btns = btnGroup.getElementsByClassName("btn");

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
#toolbar {
  position: absolute;
  z-index: 9;
  background-color: #d6d6d6e3;
  border-radius: 15px;
  text-align: center;
  left: 20px;
  top: 10px;
}

#toolbarheader {
  cursor: move;
  z-index: 10;
  color: rgba(0, 0, 0, 0.8);
  display: flex;
  justify-content: center;
}
.vertical {
  width: fit-content;
}

.vertical button {
  color: rgba(0, 0, 0, 0.8);
  display: block;
  border-radius: 50px;
  margin: 6px 4px;
  padding: 10px;
  text-decoration: none;
}

.vertical button:hover {
  background-color: rgb(172, 172, 172);
}

.active {
  background-color: rgba(35, 35, 35, 0.4);
}
</style>
