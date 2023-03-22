class History {
  constructor() {
    this.currentStateIndex = -1;
    this.history = [];
  }
  add(canvas) {
    this.canvas=canvas;
    if (this.currentStateIndex < this.history.length - 1) {
      this.history.splice(this.currentStateIndex + 1);
    }
    let temp = JSON.stringify(canvas.toJSON());
    temp=JSON.parse(JSON.stringify(canvas));
    temp.objects=temp.objects.filter((data)=>data.type!=='object');
    temp=JSON.stringify(temp);
    // // Add the current state to the history array
    this.history.push(temp);
    // // Update the current state index
    this.currentStateIndex = this.history.length - 1;
  }
  undo() {
    if (this.currentStateIndex > 0) {
      this.canvas.off('object:added');
      this.currentStateIndex--;
      // this.canvas.clear();
      this.canvas.loadFromJSON(this.history[this.currentStateIndex], () => {
        // Re-add the object:added event listener after the state has been loaded
        this.canvas.on('object:added', () => {
          // Add the current state to the history array
          this.add(this.canvas);
        });
        // Render the canvas after the state has been loaded
        this.canvas.renderAll();
      });
    }
  }
  redo() {
    if (this.currentStateIndex < this.history.length - 1) {
      this.canvas.off('object:added');
      this.currentStateIndex++;
      // this.canvas.clear();
      this.canvas.loadFromJSON(this.history[this.currentStateIndex], () => {
        // Re-add the object:added event listener after the state has been loaded
        this.canvas.on('object:added', () => {
          // Add the current state to the history array
          this.add(this.canvas);
        });
        // Render the canvas after the state has been loaded
        this.canvas.renderAll();
      });
    }
  }
}

export default new History();

