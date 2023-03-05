import { useWBFabric } from "@/stores/wbFabric";
import history from "@/components/WBFabric/tools/history";
import MouseEvents from "../tools/mouseEvent";
const fabricStore = useWBFabric();

function _setCanvasProperties(canvas) {
    canvas.setBackgroundColor(
        "rgba(255, 255, 255)",
        canvas.renderAll.bind(canvas)
    );

    fabric.Object.prototype.transparentCorners = false;
    fabric.Object.prototype.cornerColor = "#37403a";
    fabric.Object.prototype.cornerStyle = "circle";

    const par = document.getElementById("main");
    canvas.setDimensions({ width: par.offsetWidth, height: par.offsetHeight });
    fabricStore.canvas = canvas;
}

function _addRectangle(canvas) {
    
    var modifiedHandler = function (evt) {
        if(canvas.getObjects()[0].name==='rect'){   // for handling stickman event

            var modifiedObject = evt.target;
            const newrect = 
            {
                
                fill: modifiedObject.get('fill'),
                width: modifiedObject.get('width'),
                height: modifiedObject.get('height'),
                left: modifiedObject.get('left'),
                top:modifiedObject.get('top'),
                scaleX:modifiedObject.get('scaleX'),
                scaleY:modifiedObject.get('scaleY'),
                
            };
            
            history.add(newrect,canvas);
        }
        
        
    };
    
    canvas.on('object:modified', modifiedHandler);
    history.add({
        fill: "red",
        width: 200,
        height: 200,
        left: 300,
        right:300
    },canvas);
    MouseEvents.add(canvas);
    
}

const customControls = {
    _deleteControl: () => {
        const deleteIcon = "data:image/svg+xml,%3C%3Fxml version='1.0' encoding='utf-8'%3F%3E%3C!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'%3E%3Csvg version='1.1' id='Ebene_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' width='595.275px' height='595.275px' viewBox='200 215 230 470' xml:space='preserve'%3E%3Ccircle style='fill:%23F44336;' cx='299.76' cy='439.067' r='218.516'/%3E%3Cg%3E%3Crect x='267.162' y='307.978' transform='matrix(0.7071 -0.7071 0.7071 0.7071 -222.6202 340.6915)' style='fill:white;' width='65.545' height='262.18'/%3E%3Crect x='266.988' y='308.153' transform='matrix(0.7071 0.7071 -0.7071 0.7071 398.3889 -83.3116)' style='fill:white;' width='65.544' height='262.179'/%3E%3C/g%3E%3C/svg%3E";

        const img = document.createElement('img');
        img.src = deleteIcon;

        fabric.Object.prototype.controls.deleteControl = new fabric.Control({
            x: 0.5,
            y: -0.5,
            offsetY: 24,
            cursorStyle: 'pointer',
            mouseUpHandler: deleteObject,
            render: renderIcon,
            cornerSize: 24
        });
        function deleteObject(eventData, transform) {
            const target = transform.target;
            const canvas = target.canvas;
            canvas.remove(target);
            canvas.requestRenderAll();
        }
        
        function renderIcon(ctx, left, top, styleOverride, fabricObject) {
            const size = this.cornerSize;
            ctx.save();
            ctx.translate(left, top);
            ctx.rotate(fabric.util.degreesToRadians(fabricObject.angle));
            ctx.drawImage(img, -size / 2, -size / 2, size, size);
            ctx.restore();
            
        }
    }
}

function _workaround(canvas) {
    const helperObj = new fabric.Object({});    //abstract invisible object
    helperObj.set("selectable", false);         //so the user is not able to select and modify it manually
    canvas.add(helperObj);

    canvas.on("object:added", () => {
        //workaround - selecting all objects to enable object controls

        let objects = canvas.getObjects();
        var selection = new fabric.ActiveSelection(objects, {
            canvas: canvas,
        });
        canvas.setActiveObject(selection);   //selecting all objects...
        canvas.discardActiveObject();        //...and deselecting them
        canvas.requestRenderAll();
    });
}

export default function (canvas) {
    
    _setCanvasProperties(canvas);

    // Adding a simple rectangle to canvas
    _addRectangle(canvas);

    // Object controls not working until common selection
    // Issue found when importing pdfs
    _workaround(canvas);

    // Adding custom controls
    customControls._deleteControl()
}