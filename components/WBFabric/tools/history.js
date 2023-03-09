import { fabric } from "fabric";
class History {
  constructor(limit) {
    this.limit = limit;
    this.clear();
  }
  add(action,canvas) {
    if (
      this.history.length >= this.limit ||
      this.current == this.history.length - 1
    ) {
      this.history.shift();
    }
    this.history.push(action);
    const rect = new fabric.Rect(action);
    this.canvas=canvas;
    
    this.canvas.clear();
    rect.name='rect';
    canvas.add(rect);
    this.current = this.history.length;
  }
  undo() {
    if (this.current > 0) {
      if(this.current == this.history.length) --this.current;
      --this.current;
      this.canvas.clear();
      const rect = new fabric.Rect(this.history[this.current]);
      rect.name='rect';  // for handling stickman event
      this.canvas.add(rect);
      
    }
  }
  redo() {
    if (this.history.length > this.current+1) {
      this.current++;
      this.canvas.clear();
      const rect = new fabric.Rect(this.history[this.current]);
      rect.name='rect';
      this.canvas.add(rect);
      
    }
  }
  clear() {
    this.history = [];
    this.current = 0;
  }
}

// Default size 49
export default new History(49);

