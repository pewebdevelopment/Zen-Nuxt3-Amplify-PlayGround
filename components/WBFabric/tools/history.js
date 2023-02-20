import { fabric } from "fabric";
class History {
  constructor(limit) {
    this.limit = limit;
    this.clear();
    // console.log('history const',limit,this);
  }
  add(action,canvas) {
    // console.log('add action',action,this,this.current,canvas);
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
    // console.log('rect is',rect);
    canvas.add(rect);
    
    this.current = this.history.length;
  }
  undo() {
    if (this.current > 0) {
      
      this.canvas.clear();
      const rect = new fabric.Rect(this.history[--this.current]);
      this.canvas.add(rect);
      
    }
    // console.log('hitt',this);
  }
  redo() {
    if (this.history.length > this.current) {
      this.canvas.clear();
      const rect = new fabric.Rect(this.history[this.current++]);
      this.canvas.add(rect);
      
    }
    // console.log('hitt',this);
  }
  clear() {
    this.history = [];
    this.current = 0;
  }
}

// Default size 49
export default new History(49);
