<<<<<<< HEAD
"use strict";

import { MinPriorityQueue } from "@datastructures-js/priority-queue";
import TreeNode from "./TreeNode.js";
import util from "util";
import fs from "fs";

class Solution {
  static #getChildren(root, T, k) {
    if (!root) return;
    console.log(T, k);
  }

  static distanceK(root, T, k) {
    if (!root) return;
    const C = this.#getChildren(root, T, k);
    console.log(C);
  }
}

/*
  DFS post-order left-right-root
*/

const k1 = 2,
  T1 = 5,
  root = new TreeNode(3);
root.left = new TreeNode(5);
root.left.left = new TreeNode(6);
// root.left.left.left = new TreeNode(10);
// root.left.left.right = new TreeNode(13);
root.left.right = new TreeNode(2);
root.left.right.left = new TreeNode(7);
root.left.right.right = new TreeNode(4);
root.right = new TreeNode(1);
root.right.left = new TreeNode(0);
// root.right.left.left = new TreeNode(18);
// root.right.left.right = new TreeNode(17);
root.right.right = new TreeNode(8);
root.print();
// console.log(T, k);

console.log(Solution.distanceK(root, T1, k1));

const distanceK = (root, target, k) => {
  const parent = new Map(); // children: parent
  // map children to parent
  // this is so we can traverse "up" from our given target node
  const traverse = (root) => {
    if (!root) return;
    if (root.left) {
      parent.set(root.left, root);
      traverse(root.left);
    }
    if (root.right) {
      parent.set(root.right, root);
      traverse(root.right);
    }
  };
  const output = [];
  const visited = new Set();
  const findNodes = (root, distance) => {
    if (!root) return;
    if (visited.has(root)) return;
    if (distance === k) output.push(root.val); // k-distance node found
    visited.add(root); // mark visited
    // traverse left/right and "up" parent
    findNodes(root.left, distance + 1); // left
    findNodes(root.right, distance + 1); // right
    findNodes(parent.get(root), distance + 1); // parent
  };
  traverse(root);
  findNodes(target, 0);
  return output;
};

console.log(distanceK(root, T1, k1));

const DIR = [
  [1, 0],
  [0, 1],
  [-1, 0],
  [0, -1],
];
var minimumEffortPath = function (h) {
  const n = h.length,
    m = h[0].length;
  let v = [],
    min = 0,
    max = 0;
  // finding max value for effort
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < m; j++) {
      if (h[i][j - 1]) {
        max = Math.max(max, Math.abs(h[i][j] - h[i][j - 1]));
      }
      if (h[i - 1]) {
        max = Math.max(max, Math.abs(h[i][j] - h[i - 1][j]));
      }
    }
  }
  // dfs to check whether the bottom-right cell is reachable at the current effort
  function check(i, j, k) {
    if (i === n - 1 && j === m - 1) {
      return true;
    }
    v[i * m + j] = true;
    for (const [x, y] of DIR) {
      if (
        h[i + x] &&
        h[i + x][j + y] &&
        !v[(i + x) * m + j + y] &&
        Math.abs(h[i + x][j + y] - h[i][j]) <= k
      ) {
        if (check(i + x, j + y, k)) {
          return true;
        }
      }
    }
    return false;
  }
  // binary search for minimum effort value
  while (min < max - 1) {
    let mid = Math.floor((max + min) / 2);
    v = [];
    if (check(0, 0, mid)) {
      max = mid;
    } else {
      min = mid;
    }
  }
  return check(0, 0, min) ? min : max;
};

const H = [
  [1, 2, 2],
  [3, 8, 2],
  [5, 3, 5],
];

console.log(minimumEffortPath(H));
console.log(H);

var minimumEffortPath1 = function (H) {
  let y = H.length,
    x = H[0].length,
    vis = new Array(x * y),
    dist = new Array(x * y).fill(Number.POSITIVE_INFINITY),
    node = 0,
    path = 0,
    i,
    j,
    cell,
    pq = new MinPriorityQueue({ priority: (x) => x[1] });
  const insert = (next, k, l) => {
    dist[next] = Math.min(dist[next], Math.max(path, Math.abs(cell - H[k][l])));
    console.log(dist[next], path, cell, H[k][l], dist);
    pq.enqueue([next, dist[next]]);
  };
  while (node !== x * y - 1) {
    i = ~~(node / x);
    j = node % x;
    cell = H[i][j];
    console.log(i, j, cell, vis, dist, path, pq.toArray());
    if (i > 0 && !vis[node - x]) insert(node - x, i - 1, j);
    if (i < y - 1 && !vis[node + x]) insert(node + x, i + 1, j);
    if (j > 0 && !vis[node - 1]) insert(node - 1, i, j - 1);
    if (j < x - 1 && !vis[node + 1]) insert(node + 1, i, j + 1);
    vis[node] = 1;
    while (vis[node]) [node, path] = pq.dequeue().element;
    console.log(i, j, cell, vis, dist, path, pq.toArray());
    console.log("---------------");
  }
  return path;
};

// console.log(minimumEffortPath1(H));

/*
Hi Adam, 

As you may already know, my name is Huy (Jamie), I am junior full stack software engineer mainly focus in React Js and Node Js. I am eager to learn new technologies to helps make impact on the products and improve user experience.

I am currently seekng for a Front-end Web Software Engineer. Beblow is my phone number and my resume.

My phone number: +84 933.792.267

I am looking forward to hearing from you. 

Happy to connect with you.

Huy Vuong (Jamie)
Software Engineer

Hi Adam, 

After been doing a small research on the base salary, it is the fact that the average base salary for junior software engineer at ByteDance is SGD90.000 per year, I would expect my monthly salary to be SGD7.000 or SGD85.000 annually.
*/

var sampleStats = function (count) {
  let max = -Infinity,
    min = Infinity,
    mean,
    totalSum = 0,
    freq = 0,
    mode,
    median,
    maxCount = 0;
  for (let l = 0, r = 255; l < 256; l++, r--) {
    if (count[l]) {
      totalSum += count[l] * l;
      freq += count[l];
      if (min === Infinity) min = l;
      if (count[l] > maxCount) {
        maxCount = count[l];
        mode = l;
      }
    }
    if (count[r]) {
      if (max === -Infinity) max = r;
    }
  }
  mean = totalSum / freq;
  let runningSum = 0;
  let i = 0;
  // Calculate median
  while (runningSum < freq / 2) {
    runningSum += count[i];
    i++;
  }
  if (freq % 2 || runningSum > freq / 2) median = i - 1;
  else {
    let prev = i - 1;
    while (!count[i]) i++;
    median = (prev + i) / 2;
  }
  return [min, max, mean, median, mode];
};

// const N1 = [0, 1, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
// console.log(sampleStats(N));

const longestConsecutive = function (N) {
  if (N.length <= 0) return 0;
  const M = new Map();
  for (const x of N) {
    M.set(x, 1);
  }
  for (const x of N) {
    if (M.has(x - 1)) M.set(x, 0);
  }
  let out = 1;
  for (const [x] of M) {
    if (M.get(x) === 1) {
      let seq = 1;
      while (true) {
        if (M.get(x + seq) !== 0) break;
        seq++;
      }
      out = Math.max(out, seq);
    }
  }
  return out;
};

const N = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1];
console.log(longestConsecutive(N));

function getMinimumCost(k, c) {
  let purchases = new Array(k).fill(0).map(() => []);
  c.sort((a, b) => b - a);
  for (let i = 0, l = c.length; i < l; i++) purchases[i % k].push(c[i]);
  console.log(purchases);
  return purchases.reduce((total_cost, friend_total) => {
    console.log(total_cost, friend_total);
    return (
      total_cost +
      friend_total.reduce((total, cost, i) => {
        console.log(total, cost, i);
        return total + (i + 1) * cost;
      }, 0)
    );
  }, 0);
}
const c = [1, 3, 5, 7, 9],
  k = 3;
// console.log(getMinimumCost(k, c));

// function activityNotifications(E, d) {
//   let n = 0;
//   let [i1, i2] = [Math.floor((d - 1) / 2), Math.ceil((d - 1) / 2)];
//   let m1, m2, m;
//   let cs = new Array(201).fill(0);
//   for (let i = d - 1; i >= 0; i--) cs[E[i]]++;
//   for (let i = d, l = E.length; i < l; i++) {
//     for (let j = 0, k = 0; k <= i1; k += cs[j], j++) m1 = j;
//     for (let j = 0, k = 0; k <= i2; k += cs[j], j++) m2 = j;
//     let m = (m1 + m2) / 2;
//     if (E[i] >= m * 2) n++;
//     cs[E[i - d]]--;
//     cs[E[i]]++;
//   }
//   return n;
// }

function riddle(A) {
  A.push(0);
  const n = A.length;
  const WS = new Array(A.length).fill(0);
  const P = [];
  let i = 0;
  while (i < n) {
    if (!P.length || A[P[P.length - 1]] <= A[i]) {
      P.push(i++);
    } else {
      const top = P.pop();
      const range = P.length ? i - P[P.length - 1] - 1 : i;
      console.log(top, range);
      if (range < 1 || range > A.length || A[top] === 0) continue;
      WS[range - 1] = Math.max(WS[range - 1], A[top]);
    }
    console.log(i, WS, P);
  }
  console.log(WS);
  for (let i = n - 2; i >= 0; i--) {
    WS[i] = Math.max(WS[i], WS[i + 1]);
  }
  console.log(WS);
  WS.pop();
  return WS;
}

const A = [2, 6, 1, 12];
console.log(riddle(A));

const voucher = (a, n) => {
  let out = 0;
  for (let ten = 0; ten < n; ten++) {
    for (let thirty = 0; thirty < n; thirty++) {
      if (ten + thirty > n) break;
      const fifty = n - ten - thirty;
      if (ten * 10 + thirty * 30 + fifty * 50 === a) out++;
    }
  }
  return out;
};

const a = 80,
  n = 4;
console.log(voucher(a, n));

var plusOne = function (digits) {
  let arrToNumber = BigInt(digits.join(""));
  let res = BigInt(arrToNumber + BigInt(1));
  let myFunc = (res) => Number(res);

  var intArr = Array.from(String(res), myFunc);
  return intArr;
};

const D = [1, 2, 3];
console.log(plusOne(D));

var strPrice = "$1,100,134.75";
const price = parseFloat(strPrice.replace(/[^\d.]/g, ""));
console.log(price);
=======
console.log("This is a test js file in server");
const test = "This is a test js file in server";
(function(){
  console.log("This is a test js file in server");
})()
>>>>>>> 075286e0405cbcc9ff557398aa7099badcd28ffc
