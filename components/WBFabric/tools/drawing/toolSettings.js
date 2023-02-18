import { useWBFabric } from "@/stores/wbFabric";
import { fabric } from 'fabric'

const fabricStore = useWBFabric();
let canvas = null;

export function changeBrushWidth(type, val) {
    canvas = fabricStore.canvas;

    switch (type) {
        case 'fader-pencil':
            fabricStore.pencil.width = val
            canvas.freeDrawingBrush.width = val;
            break
        case 'fader-eraser':
            fabricStore.eraser.width = val
            canvas.freeDrawingBrush.width = val;
            break
        case 'fader-highlighter':
            fabricStore.highlighter.width = val
            canvas.freeDrawingBrush.width = val;
            break
    }
}

export function changeBackgroundColor(val) {
    canvas = fabricStore.canvas

    canvas.backgroundColor = val;
    canvas.renderAll();
}

export function selectHighlighter() {
    // console.log('Highlighter tool selected');
    canvas = fabricStore.canvas

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.PencilBrush(canvas);
    canvas.freeDrawingBrush.width = fabricStore.highlighter.width;
    canvas.freeDrawingBrush.strokeLineCap = 'butt'
    canvas.freeDrawingBrush.strokeLineJoin = 'mitter'
    canvas.freeDrawingBrush.color = 'rgba(255, 255, 0, 0.45)'

    fabricStore.toolSettings = ((fabricStore.toolSettings && fabricStore.selectedTool == 'highlighter') ? false : true)
    fabricStore.selectedTool = 'highlighter'
}

export function selectEraser() {
    // console.log('Eraser tool selected');
    canvas = fabricStore.canvas;

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.EraserBrush(canvas);
    canvas.freeDrawingBrush.width = fabricStore.eraser.width;
    fabricStore.toolSettings = ((fabricStore.toolSettings && fabricStore.selectedTool == 'eraser') ? false : true)
    fabricStore.selectedTool = 'eraser'
}

export function selectCursor() {
    canvas = fabricStore.canvas

    canvas.isDrawingMode = false;
    fabricStore.toolSettings = false
}

export function selectPencil() {
    // console.log('Pencil tool selected');
    canvas = fabricStore.canvas;

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.PencilBrush(canvas);
    canvas.freeDrawingBrush.width = fabricStore.pencil.width;

    fabricStore.toolSettings = (fabricStore.toolSettings && fabricStore.selectedTool == 'pencil') ? false : true
    fabricStore.selectedTool = 'pencil'
}

export function selectChangeBackground() {
    canvas = fabricStore.canvas

    canvas.isDrawingMode = false;
    fabricStore.toolSettings = (fabricStore.toolSettings && fabricStore.selectedTool == 'changeBG') ? false : true
    fabricStore.selectedTool = 'changeBG'
}