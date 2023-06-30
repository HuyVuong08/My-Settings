class DeepestLeavesSum {
        static #TC0 = [1, 2, null, 3, null, 4, null, 5, 6];
        static #TC1 = [1, 2, 3, null, 4, 5, 6];
        static #TC2 = [1, 2, null, 3, 4, 5, 6];
        static #TC3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11, 12, 13, 14];
        static #TC4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
        static #TC5 = [];
        static #TC6 = [1];
        static #DFS(root, level = 0, output = []) {
                if (!root) return [];
                this.#DFS(root.right, level + 1, output);
                this.#DFS(root.left, level + 1, output);
                return output;
        }
        static #DictionaryFromTree(root) {
                if (!root) return new Map();
                const output = new Map([[root.val, [null, null]]]),
                        S = [root];
                while (S.length) {
                        const node = S.pop();
                        if (node.left) {
                                output.set(node.left.val, [node.val, "L"]);
                                S.push(node.left);
                        }
                        if (node.right) {
                                output.set(node.right.val, [node.val, "R"]);
                                S.push(node.right);
                        }
                }
                return output;
        }
        static #DFSIterative(root, a, b) {
                const METHOD = {
                        S0: "Iterative without using hash set",
                        S1: "Iterative using 1 hash set",
                };
                const METHOD_SELECT = METHOD.S1;
                switch (METHOD_SELECT) {
                        case METHOD.S0:
                                return this.#DFSIterative0Set(root, a, b);
                        case METHOD.S1:
                                return this.#DFSIterative1Set(root, a, b);
                        default:
                                return -1;
                }
        }
        static #DFSIterative0Set(root, a, b) {
                if (!root) return [];
                const D = this.#DictionaryFromTree(root),
                        S = new Set();
                let node1 = a,
                        node2 = b,
                        tmp1 = a,
                        tmp2 = b,
                        L1 = 0,
                        L2 = 0,
                        goUp = "",
                        goDown = "",
                        dir = "",
                        output = "";
                console.log(D);
                console.log(a, b);
                while (tmp1 !== null) {
                        tmp1 = D.get(tmp1)[0];
                        L1++;
                }
                while (tmp2 !== null) {
                        tmp2 = D.get(tmp2)[0];
                        L2++;
                }
                while (L1 > L2) {
                        node1 = D.get(node1)[0];
                        goUp += "U";
                        L1--;
                }
                while (L2 > L1) {
                        [node2, dir] = D.get(node2);
                        goDown = dir + goDown;
                        L2--;
                }
                while (node1 !== null && node2 !== null) {
                        if (node1 === node2) break;
                        node1 = D.get(node1)[0];
                        [node2, dir] = D.get(node2);
                        goUp += "U";
                        goDown = dir + goDown;
                }
                output = goUp + goDown;
                return output;
        }
        static #DFSIterative1Set(root, a, b) {
                if (!root) return [];
                const D = this.#DictionaryFromTree(root),
                        M = new Map([[a, 0]]);
                let node1 = a,
                        node2 = b,
                        count = 1,
                        dir = "",
                        goUp = [],
                        goDown = [];
                console.log(D);
                console.log(a, b);
                while (node1) {
                        node1 = D.get(node1)[0];
                        goUp.push("U");
                        M.set(node1, count);
                        count++;
                }
                while (true) {
                        if (M.has(node2)) break;
                        [node2, dir] = D.get(node2);
                        goDown.unshift(dir);
                }
                return goUp.splice(0, M.get(node2)).join("") + goDown.join("");
        }
        static #BFS(root, level = 0, output = []) {
                if (!root) return [];
                this.#DFS(root.right, level + 1, output);
                this.#DFS(root.left, level + 1, output);
                return output;
        }
        static solution() {
                const METHOD = {
                        R: "Recursive DFS",
                        I: "Iterative DFS",
                };
                const METHOD_SELECT = METHOD.I;
                const TC = this.#TC3;
                const [tree, a, b] = [new Tree(TC[0]).print().print2D().print2DLine(), TC[1], TC[2]];
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.#DFS(tree.root, a, b);
                        case METHOD.I:
                                return this.#DFSIterative(tree.root, a, b);
                        default:
                                return -1;
                }
        }
}
class Direction2Node {
        static #TC0 = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 9, 5];
        static #TC1 = [[3, 5, 1, 6, 2, 0, 8, null, null, 7, 4], 5, 4];
        static #TC2 = [[3, 5, 1, 6, 2, 0, 8, null, null, 7, 4], 5, 1];
        static #TC3 = [[1, 2], 1, 2];
        static #TC4 = [[1, 2, 3], 3, 2];
        static #TC5 = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], 9, 5];
        static #TC6 = [[-1, 0, 3, -2, 4, null, null, 8], 3, 8];
        static #TC7 = [[-1, 0, 3, -2, 4, null, null, 8], 8, 4];
        static #TC8 = [[3, 5, 1, 6, 2, 0, 8, null, null, 7, 4], 1, 2];
        static #TC9 = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], 16, 12];
        static #DFS(root, level = 0, output = []) {
                if (!root) return [];
                this.#DFS(root.right, level + 1, output);
                this.#DFS(root.left, level + 1, output);
                return output;
        }
        static #DictionaryFromTree(root) {
                if (!root) return new Map();
                const output = new Map([[root.val, [null, null]]]),
                        S = [root];
                while (S.length) {
                        const node = S.pop();
                        if (node.left) {
                                output.set(node.left.val, [node.val, "L"]);
                                S.push(node.left);
                        }
                        if (node.right) {
                                output.set(node.right.val, [node.val, "R"]);
                                S.push(node.right);
                        }
                }
                return output;
        }
        static #DFSIterative(root, a, b) {
                const METHOD = {
                        S0: "Iterative without using hash set",
                        S1: "Iterative using 1 hash set",
                };
                const METHOD_SELECT = METHOD.S1;
                switch (METHOD_SELECT) {
                        case METHOD.S0:
                                return this.#DFSIterative0Set(root, a, b);
                        case METHOD.S1:
                                return this.#DFSIterative1Set(root, a, b);
                        default:
                                return -1;
                }
        }
        static #DFSIterative0Set(root, a, b) {
                if (!root) return [];
                const D = this.#DictionaryFromTree(root),
                        S = new Set();
                let node1 = a,
                        node2 = b,
                        tmp1 = a,
                        tmp2 = b,
                        L1 = 0,
                        L2 = 0,
                        goUp = "",
                        goDown = "",
                        dir = "",
                        output = "";
                console.log(D);
                console.log(a, b);
                while (tmp1 !== null) {
                        tmp1 = D.get(tmp1)[0];
                        L1++;
                }
                while (tmp2 !== null) {
                        tmp2 = D.get(tmp2)[0];
                        L2++;
                }
                while (L1 > L2) {
                        node1 = D.get(node1)[0];
                        goUp += "U";
                        L1--;
                }
                while (L2 > L1) {
                        [node2, dir] = D.get(node2);
                        goDown = dir + goDown;
                        L2--;
                }
                while (node1 !== null && node2 !== null) {
                        if (node1 === node2) break;
                        node1 = D.get(node1)[0];
                        [node2, dir] = D.get(node2);
                        goUp += "U";
                        goDown = dir + goDown;
                }
                output = goUp + goDown;
                return output;
        }
        static #DFSIterative1Set(root, a, b) {
                if (!root) return [];
                const D = this.#DictionaryFromTree(root),
                        M = new Map([[a, 0]]);
                let node1 = a,
                        node2 = b,
                        count = 1,
                        dir = "",
                        goUp = [],
                        goDown = [];
                console.log(D);
                console.log(a, b);
                while (node1) {
                        node1 = D.get(node1)[0];
                        goUp.push("U");
                        M.set(node1, count);
                        count++;
                }
                while (true) {
                        if (M.has(node2)) break;
                        [node2, dir] = D.get(node2);
                        goDown.unshift(dir);
                }
                return goUp.splice(0, M.get(node2)).join("") + goDown.join("");
        }
        static #BFS(root, level = 0, output = []) {
                if (!root) return [];
                this.#DFS(root.right, level + 1, output);
                this.#DFS(root.left, level + 1, output);
                return output;
        }
        static solution() {
                const METHOD = {
                        R: "Recursive DFS",
                        I: "Iterative DFS",
                };
                const METHOD_SELECT = METHOD.I;
                const TC = this.#TC3;
                const [tree, a, b] = [new Tree(TC[0]).print().print2D().print2DLine(), TC[1], TC[2]];
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.#DFS(tree.root, a, b);
                        case METHOD.I:
                                return this.#DFSIterative(tree.root, a, b);
                        default:
                                return -1;
                }
        }
}
class RightView {
        static #TC0 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
        static #TC1 = [1, 2, null, 3, 4, 5, 6, 7, 8, 9, 10, 11];
        static #maxLevel = -1;
        static #DFS(root, level = 0, output = []) {
                if (!root) return [];
                if (level > this.#maxLevel) {
                        output.push(root.val);
                        this.#maxLevel = level;
                }
                this.#DFS(root.right, level + 1, output);
                this.#DFS(root.left, level + 1, output);
                return output;
        }
        static #DFSIterative(root) {
                if (!root) return [];
                const S = [[root, 0]],
                        output = [];
                let maxLevel = -1;
                while (S.length) {
                        const [node, level] = S.pop();
                        if (level > maxLevel) {
                                output.push(node.val);
                                maxLevel = level;
                        }
                        if (node.left) S.push([node.left, level + 1]);
                        if (node.right) S.push([node.right, level + 1]);
                }
                return output;
        }
        static #BFS(root) {
                if (!root) return [];
                const Q = [root],
                        output = [];
                while (Q.length) {
                        let len = Q.length,
                                isNewLevel = false;
                        while (len) {
                                const node = Q.shift();
                                if (!isNewLevel) {
                                        output.push(node.val);
                                        isNewLevel = true;
                                }
                                if (node.right) Q.push(node.right);
                                if (node.left) Q.push(node.left);
                                len--;
                        }
                }
                return output;
        }
        static solution() {
                const METHOD = {
                        R: "Recursive DFS",
                        I: "Iterative DFS",
                        L: "Level Order BFS",
                };
                const METHOD_SELECT = METHOD.R;
                const tree = new Tree(this.#TC1).print().print2D().print2DLine();
                const tree1 = new Tree([1, 2, 3, 4, 5, 6, 7, 8, 9]).print().print2D().print2DLine();
                console.log(tree1.MorrisTraversal());
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.#DFS(tree.root);
                        case METHOD.I:
                                return this.#DFSIterative(tree.root);
                        case METHOD.L:
                                return this.#BFS(tree.root);
                        default:
                                return -1;
                }
        }
}
class LCA {
        static #TC0 = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 9, 5];
        static #TC1 = [[3, 5, 1, 6, 2, 0, 8, null, null, 7, 4], 5, 4];
        static #TC2 = [[3, 5, 1, 6, 2, 0, 8, null, null, 7, 4], 5, 1];
        static #TC3 = [[1, 2], 1, 2];
        static #TC4 = [[1, 2, 3], 3, 2];
        static #TC5 = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], 9, 5];
        static #TC6 = [[-1, 0, 3, -2, 4, null, null, 8], 3, 8];
        static #TC7 = [[-1, 0, 3, -2, 4, null, null, 8], 8, 4];
        static #DFS(root, a, b) {
                if (!root) return 0;
                const left = this.#DFS(root.left, a, b);
                const right = this.#DFS(root.right, a, b);
                const node = root.val === a.val || root.val === b.val ? 1 : 0;
                if (left + right + node === 2) return root.val;
                return left || right || node;
        }
        static #DFSIterative(root, a, b) {
                const METHOD = {
                        S0: "Iterative without using hash set",
                        S1: "Iterative using 1 hash set",
                };
                const METHOD_SELECT = METHOD.S1;
                switch (METHOD_SELECT) {
                        case METHOD.S0:
                                return this.#DFSIterative0Set(root, a, b);
                        case METHOD.S1:
                                return this.#DFSIterative1Set(root, a, b);
                        default:
                                return -1;
                }
        }
        static #DictionaryFromTree(root) {
                if (!root) return new Map();
                const output = new Map([[root.val, null]]),
                        S = [root];
                while (S.length) {
                        const node = S.pop();
                        if (node.right) {
                                output.set(node.right.val, node.val);
                                S.push(node.right);
                        }
                        if (node.left) {
                                output.set(node.left.val, node.val);
                                S.push(node.left);
                        }
                }
                return output;
        }
        static #DFSIterative0Set(root, a, b) {
                if (!root) return null;
                const D = this.#DictionaryFromTree(root);
                let node1 = a.val,
                        node2 = b.val,
                        tmp1 = node1,
                        tmp2 = node2,
                        L1 = 0,
                        L2 = 0;
                console.log(D);
                console.log(a.val, b.val);
                while (tmp1 !== null) {
                        tmp1 = D.get(tmp1);
                        L1++;
                }
                while (tmp2 !== null) {
                        tmp2 = D.get(tmp2);
                        L2++;
                }
                while (L1 > L2) {
                        node1 = D.get(node1);
                        L1--;
                }
                while (L1 < L2) {
                        node2 = D.get(node2);
                        L2--;
                }
                console.log(node1, node2);
                while (node1 !== null && node2 !== null) {
                        console.log(node1, node2);
                        if (node1 === node2) return node1;
                        node1 = D.get(node1);
                        node2 = D.get(node2);
                }
                return null;
        }
        static #DFSIterative1Set(root, a, b) {
                if (!root) return null;
                const D = this.#DictionaryFromTree(root),
                        S = new Set();
                let node1 = a.val,
                        node2 = b.val;
                console.log(D);
                console.log(node1, node2);
                while (node1 !== null) {
                        S.add(node1);
                        node1 = D.get(node1);
                }
                while (node2 !== null) {
                        if (S.has(node2)) return node2;
                        node2 = D.get(node2);
                }
                console.log(S);
                return null;
        }
        static #DFSIterativeOldOld(root, a, b) {
                const stack = [[node, 2]];
                let oneNodeFound = false;
                let LCAIndex = -1;
                while (stack.length) {
                        let childNode;
                        let [parentNode, parentState] = stack[stack.length - 1];
                        if (parentState != 0) {
                                if (parentState == 2) {
                                        if (parentNode == p || parentNode == q) {
                                                if (oneNodeFound) return stack[LCAIndex][0];
                                                else {
                                                        oneNodeFound = true;
                                                        LCAIndex = stack.length - 1;
                                                }
                                        }
                                        childNode = parentNode.left;
                                } else childNode = parentNode.right;
                                stack[stack.length - 1][1] = parentState - 1;
                                if (childNode) stack.push([childNode, 2]);
                        } else {
                                if (oneNodeFound && LCAIndex == stack.length - 1) LCAIndex -= 1;
                                stack.pop();
                        }
                }
        }
        static solution() {
                const METHOD = {
                        R: "Recursive DFS",
                        I: "Iterative DFS",
                };
                const METHOD_SELECT = METHOD.I;
                const TC = this.#TC7;
                const [tree, a, b] = [
                        new Tree(TC[0]).print().print2D().print2DLine(),
                        new Node(TC[1]),
                        new Node(TC[2]),
                ];
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.#DFS(tree.root, a, b);
                        case METHOD.I:
                                return this.#DFSIterative(tree.root, a, b);
                        default:
                                return -1;
                }
        }
}
class InvertBinaryTree {
        static #TC0 = [1, 2, 3, 4, 5, null, 6, 7, 8];
        static #DFSRecursive(root) {
                if (!root) return root;
                this.#DFSRecursive(root.left);
                this.#DFSRecursive(root.right);
                const temp = root.left;
                root.left = root.right;
                root.right = temp;
                return root;
        }
        static #DFSIterative(root) {
                if (!root) return root;
                const S1 = [root],
                        S2 = [];
                while (S1.length) {
                        const node = S1.pop();
                        S2.push(node);
                        if (node.left) S1.push(node.left);
                        if (node.right) S1.push(node.right);
                }
                while (S2.length) {
                        const node = S2.pop();
                        const tmp = node.left;
                        node.left = node.right;
                        node.right = tmp;
                }
                return root;
        }
        static solution() {
                const METHOD = {
                        R: "Recursive DFS",
                        I: "Iterative DFS",
                };
                const METHOD_SELECT = METHOD.I;
                const tree = new Tree(this.#TC0).print().print2D().print2DLine();
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                this.#DFSRecursive(tree.root);
                                tree.print().print2D().print2DLine();
                                return this;
                        case METHOD.I:
                                this.#DFSIterative(tree.root);
                                tree.print().print2D().print2DLine();
                                return this;
                        default:
                                return -1;
                }
        }
}
class CountCompleteTreeNodes {
        static #TC0 = [1, 2, null, 3, null, 4, null, 5, 6];
        static #TC1 = [1, 2, 3, null, 4, 5, 6];
        static #TC2 = [1, 2, null, 3, 4, 5, 6];
        static #TC3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11, 12, 13, 14];
        static #TC4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
        static #TC5 = [];
        static #TC6 = [1];
        static #output = 0;
        static #DFS(root, output = 0) {
                if (!root) return 0;
                console.log(root.val);
                this.#output++;
                if (root.left) this.#DFS(root.left, output);
                if (root.right) this.#DFS(root.right, output);
                return this.#output;
        }
        static solution() {
                const tree = new Tree(this.#TC2).print().print2D().print2DLine();
                this.#DFS(tree.root);
                return this.#output;
        }
}
class MaximalSquare {
        static #TC0 = [
                ["1", "0", "0", "0", "0"],
                ["1", "0", "1", "1", "1"],
                ["0", "0", "1", "1", "1"],
                ["0", "1", "0", "1", "0"],
        ];
        static #TC1 = [
                ["0", "1"],
                ["1", "0"],
        ];
        static #TC2 = [["0"]];
        static #TC3 = [
                ["1", "1", "1", "1", "0"],
                ["1", "1", "1", "1", "0"],
                ["1", "1", "1", "1", "1"],
                ["1", "1", "1", "1", "1"],
                ["0", "0", "1", "1", "1"],
        ];
        static #M;
        static #R = 0;
        static #C = 0;
        static #output = 0;
        static #cache;
        static #getDimentions(M) {
                this.#R = this.#M.length;
                this.#C = this.#M[0].length;
                return [M.length, M[0].length];
        }
        static #BFS(r, c) {
                const Q = [[r, c]];
                while (Q.length) {
                        const [r, c] = Q.shift();
                        if (r < 0 || c < 0) continue;
                        if (this.#cache[r][c] !== -1) continue;
                        if (this.#M[r][c] === "0") this.#cache[r][c] = 0;
                        else if (r === this.#R - 1 || c === this.#C - 1) this.#cache[r][c] = 1;
                        else if (this.#M[r][c] === "1") {
                                const right = this.#cache[r][c + 1];
                                const down = this.#cache[r + 1][c];
                                const diag = this.#cache[r + 1][c + 1];
                                this.#cache[r][c] = 1 + Math.min(right, down, diag);
                        }
                        Q.push([r - 1, c]);
                        Q.push([r, c - 1]);
                        Q.push([r - 1, c - 1]);
                        const res = this.#cache[r][c];
                        this.#output = Math.max(this.#output, res);
                }
        }
        static #dynamicProgramming(M) {
                let output = 0;
                const [R, C] = this.#getDimentions(M);
                const cache = [...Array(R + 1).fill(0)].map(() => [...Array(C + 1).fill(0)]);
                for (let r = 1; r < R + 1; r++) {
                        for (let c = 1; c < C + 1; c++) {
                                console.log(r, c);
                                if (M[r - 1][c - 1] === "0") continue;
                                cache[r][c] = 1 + Math.min(cache[r - 1][c], cache[r - 1][c - 1], cache[r][c - 1]);
                                output = Math.max(output, cache[r][c]);
                                console.log(r, c);
                        }
                }
                console.log(cache);
                return output ** 2;
        }
        static #recursiveBFS() {
                this.#getDimentions(this.#M);
                this.#cache = [...Array(this.#R).fill(-1)].map((ele) => (ele = [...Array(this.#C).fill(-1)]));
                for (let r = this.#R - 1; r >= 0; r--) {
                        for (let c = this.#C - 1; c >= 0; c--) {
                                if (this.#cache[r][c] !== -1) continue;
                                this.#BFS(r, c);
                        }
                }
                return this.#output ** 2;
        }
        static #recursiveDFS() {
                this.#getDimentions(this.#M);
                this.#cache = [...Array(this.#R).fill(-1)].map((ele) => (ele = [...Array(this.#C).fill(-1)]));
        }
        static solution() {
                const METHOD = {
                        DP: "Dynamic Programming",
                        DFS: "Recursive DFS",
                        BFS: "Recursive BFS",
                };
                const METHOD_SELECT = METHOD.DP;
                this.#M = this.#TC1;
                const M = this.#TC1;
                switch (METHOD_SELECT) {
                        case METHOD.DP:
                                return dynamicProgramming(M);
                        case METHOD.DFS:
                                return recursiveDFS();
                        case METHOD.BFS:
                                return reaursiveBFS();
                        default:
                                return -1;
                }
        }
}
class LargestRectangleAreaInHistogram {
        static #TC0 = [1, 2, 3, 4, 5];
        static #TC1 = [2, 1, 5, 6, 2, 3];
        static #TC2 = [2, 1];
        static #TC3 = [5, 6, 2];
        static #TC4 = [1, 1];
        static #TC5 = [2, 1, 5, 6, 6, 2, 3];
        static #TC6 = [2, 1, 2];
        static solution() {
                const H = this.#TC6;
                let S = [];
                let output = 0;
                for (const [i, x] of H.entries()) {
                        console.log(i, x);
                        console.log(S);
                        let lastPop = i;
                        while (S.length && S[S.length - 1][1] > x) {
                                console.log("while:", S);
                                const [index, h] = S.pop();
                                lastPop = index;
                                output = Math.max(output, h * (i - index));
                                console.log("output:", output);
                        }
                        S.push([lastPop, x]);
                }
                console.log(H, S);
                for (const [i, h] of S) {
                        output = Math.max(output, h * (H.length - i));
                }
                return output;
        }
}
class NumberOfIsland {
        static #TC0 = [
                ["1", "0", "0", "0", "0"],
                ["1", "0", "1", "1", "1"],
                ["0", "0", "1", "1", "1"],
                ["0", "1", "0", "1", "0"],
        ];
        static #TC1 = [
                ["0", "1"],
                ["1", "0"],
        ];
        static #TC2 = [["0"]];
        static #TC3 = [
                ["1", "1", "1", "1", "0"],
                ["1", "1", "1", "1", "0"],
                ["1", "1", "1", "1", "1"],
                ["1", "1", "1", "1", "1"],
                ["0", "0", "1", "1", "1"],
        ];
        static solution() {
                const G = this.#TC0;
                console.log(G);
        }
}
class Node {
        val = 0;
        left = null;
        right = null;
        constructor(val = 0) {
                this.val = val;
                return this;
        }
}
class Tree {
        root = null;
        constructor(arr = []) {
                if (!arr.length) return this;
                let i = 0,
                        val = arr[i++];
                const len = arr.length;
                if (!this.root) this.root = val !== null ? new Node(val) : null;
                if (i === len) return this;
                const Q = [this.root];
                while (Q.length) {
                        const node = Q.shift();
                        if (node !== null && !node.left) {
                                val = arr[i++];
                                node.left = val !== null ? new Node(val) : null;
                                Q.push(node.left);
                                if (i === len) break;
                        }
                        if (node !== null && !node.right) {
                                val = arr[i++];
                                node.right = val !== null ? new Node(val) : null;
                                Q.push(node.right);
                                if (i === len) break;
                        }
                }
                return this;
        }
        buildOld(arr) {
                for (const x of arr) this.#buildLevelOrder(x);
                if (!this.root) return this;
                const Q = [this.root];
                while (Q.length) {
                        const node = Q.shift();
                        if (node.left === -1) node.left = null;
                        else if (node.left) Q.push(node.left);
                        if (node.right === -1) node.right = null;
                        else if (node.right) Q.push(node.right);
                }
                return this;
        }
        #buildLevelOrder(val) {
                const newNode = val !== null ? new Node(val) : -1;
                if (!this.root) {
                        this.root = newNode;
                        return this;
                }
                const Q = [this.root];
                while (Q.length) {
                        const node = Q.shift();
                        if (!node.left) {
                                node.left = newNode;
                                return this;
                        } else if (node.left && node.left !== -1) Q.push(node.left);
                        if (!node.right) {
                                node.right = newNode;
                                return this;
                        } else if (node.right && node.right !== -1) Q.push(node.right);
                }
        }
        insert(val) {
                if (!this.root) {
                        this.root = new Node(val);
                        return this;
                }
                const Q = [this.root];
                while (Q.length) {
                        const node = Q.shift();
                        if (node.left) Q.push(node.left);
                        else {
                                node.left = new Node(val);
                                break;
                        }
                        if (node.right) Q.push(node.right);
                        else {
                                node.right = new Node(val);
                                break;
                        }
                }
                return this;
        }
        deleteNode(val, root = this.root) {
                if (!root) return root;
                if (root.val === val) return null;
                if (root.left) root.left = this.deleteNode(val, root.left);
                if (root.right) root.right = this.deleteNode(val, root.right);
                return root;
        }
        print(root = this.root) {
                const METHOD = {
                        IN: "Inorder",
                        PRE: "Preorder",
                        POST: "Postorder",
                        LEVEL: "Level Order",
                };
                const METHOD_SELECT = METHOD.LEVEL;
                switch (METHOD_SELECT) {
                        case METHOD.IN:
                                console.log(this.getInorderRecursive(root));
                                break;
                        case METHOD.PRE:
                                console.log(this.getPreorderRecursive(root));
                                break;
                        case METHOD.POST:
                                console.log(this.getPostorderRecursive(root));
                                break;
                        case METHOD.LEVEL:
                                console.log(JSON.stringify(this.getLevelOrder(root)));
                                break;
                        default:
                                break;
                }
                return this;
        }
        print2D(root = this.root) {
                const LEVEL_ORDER = this.getLevelOrder(this.root),
                        HEIGHT = LEVEL_ORDER.length,
                        SPACE = 3,
                        S = {
                                SPACE_FULL: " ".repeat(SPACE),
                                SPACE_HALF: " ".repeat(Math.ceil(SPACE / 2)),
                                SPACE_LESS_1: " ".repeat(SPACE - 1),
                                SPACE_LESS_2: " ".repeat(SPACE - 2),
                        };
                for (const [i, x] of LEVEL_ORDER.entries()) {
                        const L = HEIGHT - 1 - i;
                        let line = `${S.SPACE_HALF}`.repeat(this.#calculateConvolutedSquare(L - 1)),
                                r = "";
                        for (const [j, y] of x.entries()) {
                                line +=
                                        y > 9
                                                ? y + r
                                                : r +
                                                  (y ?? (LEVEL_ORDER[i - 1][Math.floor(j / 2)] === null ? " " : "."));
                                r = "";
                                if (L > 0) line += " ".repeat(2 ** L - 1);
                                if (y > 9) {
                                        if (j % 2 === 0) {
                                                r = " ";
                                                line += S.SPACE_LESS_2;
                                        } else line += S.SPACE_LESS_1;
                                } else if (j % 2 === 0 && x[j + 1] > 9) {
                                        line += S.SPACE_LESS_1;
                                        r += " ";
                                } else line += S.SPACE_FULL;
                                line += `${S.SPACE_FULL}`.repeat(2 ** L - 1);
                        }
                        console.log(line);
                        line = "";
                }
                return this;
        }
        print2DLine(root = this.root, level = 0, height = this.getHeight()) {
                if (!root && level === height) return this;
                else if (!root) {
                        const line = "    ".repeat(level) + ".";
                        console.log(line);
                        return this;
                }
                this.print2DLine(root.right, level + 1);
                const line = "    ".repeat(level) + root.val;
                console.log(line);
                this.print2DLine(root.left, level + 1);
                return this;
        }
        getInorder(root = this.root, output = []) {
                const METHOD = {
                        R: "Recursive",
                        I: "Iterative",
                };
                const METHOD_SELECT = METHOD.I;
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.getInorderRecursive(root, output);
                        case METHOD.I:
                                return this.getInorderIterative(root, output);
                        default:
                                return -1;
                }
        }
        getInorderRecursive(root = this.root, output = []) {
                if (!root) return output;
                this.getInorderRecursive(root.left, output);
                output.push(root.val);
                this.getInorderRecursive(root.right, output);
                return output;
        }
        getInorderIterative(root = this.root, output = []) {
                if (!root) return root;
                const S = [];
                let tmp = root;
                while (S.length || tmp) {
                        while (tmp) {
                                S.push(tmp);
                                tmp = tmp.left;
                        }
                        tmp = S.pop();
                        output.push(tmp.val);
                        tmp = tmp.right;
                }
                return output;
        }
        MorrisTraversal(root = this.root) {
                let current, pre;
                if (root == null) return;
                current = root;
                while (current != null) {
                        if (current.left == null) {
                                console.log(current.val + " ");
                                current = current.right;
                        } else {
                                pre = current.left;
                                while (pre.right != null && pre.right != current) pre = pre.right;
                                if (pre.right == null) {
                                        pre.right = current;
                                        current = current.left;
                                } else {
                                        pre.right = null;
                                        console.log(current.val + " ");
                                        current = current.right;
                                }
                        }
                }
        }
        morrisTraversalPreorder(node) {
                while (node != null) {
                        if (node.left == null) {
                                document.write(node.data + " ");
                                node = node.right;
                        } else {
                                var current = node.left;
                                while (current.right != null && current.right != node) {
                                        current = current.right;
                                }
                                if (current.right == node) {
                                        current.right = null;
                                        node = node.right;
                                } else {
                                        document.write(node.data + " ");
                                        current.right = node;
                                        node = node.left;
                                }
                        }
                }
        }
        iterativePreorder(node) {
                if (node == null) return;
                var nodeStack = [];
                nodeStack.push(root);
                while (nodeStack.length > 0) {
                        var mynode = nodeStack[nodeStack.length - 1];
                        document.write(mynode.data + " ");
                        nodeStack.pop();
                        if (mynode.right != null) nodeStack.push(mynode.right);
                        if (mynode.left != null) nodeStack.push(mynode.left);
                }
        }
        preorderiterative(node) {
                if (node == null) return;
                let st = [];
                let curr = node;
                while (curr != null || st.length > 0) {
                        while (curr != null) {
                                document.write(curr.data + " ");
                                if (curr.right != null) st.push(curr.right);
                                curr = curr.left;
                        }
                        if (st.length > 0) {
                                curr = st.pop();
                        }
                }
        }
        getPreorder(root = this.root, output = []) {
                const METHOD = {
                        R: "Recursive",
                        I: "Iterative",
                };
                const METHOD_SELECT = METHOD.I;
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.getPreorderRecursive(root, output);
                        case METHOD.I:
                                return this.getPreorderIterative(root, output);
                        default:
                                return -1;
                }
        }
        getPreorderRecursive(root = this.root, output = []) {
                if (!root) return output;
                output.push(root.val);
                this.getPreorderRecursive(root.left, output);
                this.getPreorderRecursive(root.right, output);
                return output;
        }
        getPreorderIterative(root = this.root, output = []) {
                if (!root) return [];
                const S = [root];
                while (S.length) {
                        const node = S.pop();
                        output.push(node.val);
                        if (node.right) S.push(node.right);
                        if (node.left) S.push(node.left);
                }
                return output;
        }
        getPostorder(root = this.root, output = []) {
                const METHOD = {
                        R: "Recursive",
                        I: "Iterative",
                };
                const METHOD_SELECT = METHOD.I;
                switch (METHOD_SELECT) {
                        case METHOD.R:
                                return this.getPostorderRecursive(root, output);
                        case METHOD.I:
                                return this.getPostorderIterative(root, output);
                        default:
                                return -1;
                }
        }
        getPostorderIterative(root = this.root, output = []) {
                if (!root) return [];
                const S1 = [root],
                        S2 = [];
                while (S1.length) {
                        const node = S1.pop();
                        S2.push(node);
                        if (node.left) S1.push(node.left);
                        if (node.right) S1.push(node.right);
                }
                while (S2.length) {
                        const node = S2.pop();
                        output.push(node.val);
                }
                return output;
        }
        getLevelOrder(root = this.root) {
                const output = [];
                if (!root) return output;
                const Q = [root];
                while (Q.length) {
                        const level = [];
                        let lenLevel = Q.length;
                        while (lenLevel) {
                                lenLevel--;
                                const node = Q.shift();
                                if (!node) {
                                        level.push(null);
                                        continue;
                                }
                                level.push(node.val);
                                Q.push(node.left);
                                Q.push(node.right);
                        }
                        output.push(level);
                }
                output.pop();
                let curr = 0;
                for (const [i, x] of output.entries()) {
                        const level = [];
                        for (const [j, ele] of output[i].entries()) {
                                if (ele !== null || i === output.length - 1) continue;
                                output[i + 1].splice(j * 2, 0, null, null);
                        }
                }
                return output;
        }
        getHeight(root = this.root) {
                if (!root) return 0;
                const left = this.getHeight(root.left);
                const right = this.getHeight(root.right);
                return 1 + Math.max(left, right);
        }
        #calculateConvolutedSquare(order) {
                let output = 0;
                while (order >= 0) {
                        output += 2 ** order;
                        order--;
                }
                return output;
        }
}
class BST extends Tree {
        constructor(arr) {
                super();
                for (const a of arr) this.#insert(a);
                return this;
        }
        #insert(val) {
                return (this.root = this.#insertRecursive(this.root, val));
        }
        #insertRecursive(root, val) {
                if (!root) root = new Node(val);
                else if (val <= root.val) root.left = this.#insertRecursive(root.left, val);
                else root.right = this.#insertRecursive(root.right, val);
                return root;
        }
}
// console.log(LargestRectangleAreaInHistogram.solution());
// console.log(NumberOfIsland.solution());
// console.log(MaximalSquare.solution());
// console.log(CountCompleteTreeNodes.solution());
// console.log(RightView.solution());
// console.log(LCA.solution());
console.log(Direction2Node.solution());
// console.log(CountCompleteTreeNodes.solution());
