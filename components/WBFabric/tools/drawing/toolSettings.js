import { useWBFabric } from "@/stores/wbFabric";

const fabricStore = useWBFabric();
let canvas = null;

export function changePencilColor(color) {
    canvas = fabricStore.canvas;

    fabricStore.pencil.color = color;
    if (fabricStore.selectedTool == 'pencil') canvas.freeDrawingBrush.color = color;
}

export function changeHighlighterColor(color, opacity = '85') {
    canvas = fabricStore.canvas;

    fabricStore.highlighter.color = color;
    fabricStore.highlighter.opacity = opacity

    if (fabricStore.selectedTool == 'highlighter') {
        canvas.freeDrawingBrush.color = color + opacity;
    }
}

export function changeBrushWidth(type, val) {
    canvas = fabricStore.canvas;

    switch (type) {
        case 'pencil-width':
            fabricStore.pencil.width = val
            if (fabricStore.selectedTool == 'pencil')
                canvas.freeDrawingBrush.width = val;
            break
        case 'eraser-width':
            fabricStore.eraser.width = val
            if (fabricStore.selectedTool == 'eraser')
                canvas.freeDrawingBrush.width = val;
            break
        case 'highlighter-width':
            fabricStore.highlighter.width = val
            if (fabricStore.selectedTool == 'highlighter')
                canvas.freeDrawingBrush.width = val;
            break
    }
}

export function changeBrushOpacity(type, val) {
    canvas = fabricStore.canvas;

    if (val.length == 1) val = '0' + val;

    fabricStore.highlighter.opacity = val;
    selectHighlighter();
}

export function changeBackgroundColor(val) {
    canvas = fabricStore.canvas

    fabricStore.background = val;
    canvas.backgroundColor = val;
    canvas.renderAll();
}

export function selectHighlighter() {
    // console.log('Highlighter tool selected');
    canvas = fabricStore.canvas

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.PencilBrush(canvas);
    fabricStore.currentDrawingBrush = canvas.freeDrawingBrush;
    canvas.freeDrawingBrush.width = fabricStore.highlighter.width;
    canvas.freeDrawingBrush.strokeLineCap = 'butt'
    canvas.freeDrawingBrush.strokeLineJoin = 'mitter'
    canvas.freeDrawingBrush.color = fabricStore.highlighter.color + fabricStore.highlighter.opacity;

    fabricStore.toolSettings = ((fabricStore.toolSettings && fabricStore.selectedTool == 'highlighter') ? false : true)
    fabricStore.selectedTool = 'highlighter'
}

export function selectEraser() {
    // console.log('Eraser tool selected');
    canvas = fabricStore.canvas;

    canvas.isDrawingMode = true;
    canvas.freeDrawingBrush = new fabric.EraserBrush(canvas);
    fabricStore.currentDrawingBrush = canvas.freeDrawingBrush;
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
    fabricStore.currentDrawingBrush = canvas.freeDrawingBrush;
    canvas.freeDrawingBrush.width = fabricStore.pencil.width;
    canvas.freeDrawingBrush.color = fabricStore.pencil.color;

    fabricStore.toolSettings = (fabricStore.toolSettings && fabricStore.selectedTool == 'pencil') ? false : true
    fabricStore.selectedTool = 'pencil'
}

export function selectChangeBackground() {
    canvas = fabricStore.canvas

    canvas.isDrawingMode = false;
    fabricStore.toolSettings = (fabricStore.toolSettings && fabricStore.selectedTool == 'changeBG') ? false : true
    fabricStore.selectedTool = 'changeBG'
}

export function openNav() {
    document.getElementById("sidebar-tool-settings").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";
    document.getElementById("sidebar-bg-settings").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";

    document.getElementById("mySidebar").style.width = "240px";
    // document.getElementById("pagetop-container").style.marginLeft = "240px";
}

export function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";
    const current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
}

export function openToolSettings() {
    document.getElementById("mySidebar").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";
    document.getElementById("sidebar-bg-settings").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";

    document.getElementById("sidebar-tool-settings").style.width = "300px";
    // document.getElementById("pagetop-container").style.marginLeft = "300px";
}

export function closeToolSettings() {
    document.getElementById("sidebar-tool-settings").style.width = "0";
    document.getElementById("pagetop-container").style.marginLeft = "0";
    const current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
}

export function openBackgroundSettings() {
    document.getElementById("sidebar-tool-settings").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";
    document.getElementById("mySidebar").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";

    document.getElementById("sidebar-bg-settings").style.width = "300px";
    // document.getElementById("pagetop-container").style.marginLeft = "300px";
}

export function closeBackgroundSettings() {
    document.getElementById("sidebar-bg-settings").style.width = "0";
    // document.getElementById("pagetop-container").style.marginLeft = "0";
    const current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
}

export function openToolPage(pageName, elmnt, color) {
    let i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }

    document.getElementById(pageName).style.display = "block";

    elmnt.style.backgroundColor = color;
}

export function drawGrid() {
    canvas = fabricStore.canvas;

    let gridWidth = fabricStore.grid.verticalSpacing;
    let gridHeight = fabricStore.grid.horizontalSpacing;

    let oGridGroup = new fabric.Group([], { left: 0, top: 0 });

    let gridSize = 20; // define grid size

    // define presentation option of grid
    let lineOption = { stroke: 'rgba(0,0,0,.4)', strokeWidth: 1, selectable: false, strokeDashArray: [3, 3] };

    // do in two steps to limit the calculations
    // first loop for vertical line
    for (let i = Math.ceil(gridWidth / gridSize); i--;) {
        oGridGroup.add(new fabric.Line([gridSize * i, 0, gridSize * i, gridHeight], lineOption));
    }
    // second loop for horizontal line
    for (let i = Math.ceil(gridHeight / gridSize); i--;) {
        oGridGroup.add(new fabric.Line([0, gridSize * i, gridWidth, gridSize * i], lineOption));
    }
    // Group add to canvas
    canvas.add(oGridGroup);
}