import { useWBFabric } from "@/stores/wbFabric";
import { fabric } from 'fabric'

const fabricStore = useWBFabric();
let canvas = null;

export function selectHighlighter() {
    // console.log('Highlighter tool selected');
    canvas = fabricStore.canvas

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.PencilBrush(canvas);
    canvas.freeDrawingBrush.width = 25;
    canvas.freeDrawingBrush.strokeLineCap = 'butt'
    canvas.freeDrawingBrush.strokeLineJoin = 'mitter'
    canvas.freeDrawingBrush.color = 'rgba(255, 255, 0, 0.45)'
}

export function selectEraser() {
    // console.log('Eraser tool selected');
    canvas = fabricStore.canvas;

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.EraserBrush(canvas);
    canvas.freeDrawingBrush.width = 50;
}

export function selectCursor() {
    canvas = fabricStore.canvas

    canvas.isDrawingMode = false;
}

export function selectPencil() {
    // console.log('Pencil tool selected');
    canvas = fabricStore.canvas;

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.PencilBrush(canvas);
    canvas.freeDrawingBrush.width = 5;
}