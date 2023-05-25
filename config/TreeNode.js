class TreeNode {
  constructor(val) {
    this.val = val;
    this.left = null;
    this.right = null;
  }

  getHeight() {
    const DFS = (root) => {
      if (!root) return 0;
      const left = DFS(root.left);
      const right = DFS(root.right);
      return Math.max(left, right) + 1;
    };
    const left = DFS(this.left);
    const right = DFS(this.right);
    return Math.max(left, right) + 1;
  }

  getLevelOrder() {
    let queue = [this.left, this.right],
      output = [[this.val]];
    while (queue.length) {
      let levelNode = [],
        levelLength = queue.length;
      while (levelLength) {
        const node = queue.shift();
        levelNode.push(node ? node.val : null);
        if (node) {
          queue.push(node.left);
          queue.push(node.right);
        }
        levelLength--;
      }
      output.push(levelNode);
    }
    output.pop();
    return output;
  }

  calculateConvolutedSquare(order) {
    let output = 0;
    while (order >= 0) {
      output += 2 ** order;
      order--;
    }
    return output;
  }

  addSpace2Line(line, space, count) {
    while (count) {
      line += space;
      count--;
    }
    return line;
  }

  calculateSpace(num) {
    let space = num,
      space_half = Math.floor(num / 2) + (num % 2),
      space_less_1 = num - 1,
      space_less_2 = num - 2,
      output = {
        SPACE: "",
        SPACE_HALF: "",
        SPACE_LESS_1: "",
        SPACE_LESS_2: "",
      };
    while (space) {
      output["SPACE"] += " ";
      space--;
    }
    while (space_half) {
      output["SPACE_HALF"] += " ";
      space_half--;
    }
    while (space_less_1) {
      output["SPACE_LESS_1"] += " ";
      space_less_1--;
    }
    while (space_less_2) {
      output["SPACE_LESS_2"] += " ";
      space_less_2--;
    }
    return output;
  }

  print() {
    const LEVEL_ORDER = this.getLevelOrder(),
      HEIGHT = LEVEL_ORDER.length,
      s = this.calculateSpace(3);
    let line = "";
    LEVEL_ORDER.forEach((x, i) => {
      let m = this.calculateConvolutedSquare(HEIGHT - i - 2),
        r = "";
      line = this.addSpace2Line(line, s.SPACE_HALF, m);
      x.forEach((y, j) => {
        line += y > 9 ? (y ?? " ") + r : r + (y ?? " ");
        r = "";
        let l = HEIGHT - i - 1;
        if (l > 0) line = this.addSpace2Line(line, " ", 2 ** l - 1);
        if (y > 9) {
          if (j % 2 === 0) {
            r = " ";
            line += s.SPACE_LESS_2;
          } else line += s.SPACE_LESS_1;
        } else line += s.SPACE;
        line = this.addSpace2Line(line, s.SPACE, 2 ** l - 1);
      });
      console.log(line);
      line = "";
    });
    console.log("-----------------");
  }
}

export default TreeNode;

// function runTest(testFunction, testArray) {
//   console.log("   Running test:", testFunction.name);
//   let start = performance.now();
//   let result = testFunction(testArray);
//   let end = performance.now();
//   console.log("      Duration:", end - start);
// }
// let arr = [];
// let setSize = 1000;
// for (var i = 0; i < setSize; i++) {
//   arr.push(i);
// }
// console.log("Set size:", setSize);
// runTest(objectSolution, arr);
// runTest(setSolution, arr);

// const testcases = [
//   "3.",
//   "4.5",
//   "4.5e-2",
//   "-4.5e+3",
//   "2e0",
//   "2e+2.3",
//   ".3",
//   "+.3",
//   ".",
//   "e",
//   "0e",
// ];
// const output = [];
// testcases.forEach((x) => {
//   output.push({ Testcase: x, Result: Solution.isNumber(x) });
// });
// console.table(output);
