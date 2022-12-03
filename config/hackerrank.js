// ==UserScript==
// @name         Hackerrank Run Button
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       vorophobe at gmail dot com
// @match        https://www.hackerrank.com/*
// @grant        none
// ==/UserScript==

(function () {
  "use strict";
  window.onkeydown = function (event) {
    if (event.keyCode === 18) {
      console.log("click");
      document
        .getElementsByClassName(
          "ui-btn ui-btn-normal ui-btn-secondary pull-right msR hr-monaco-compile hr-monaco__run-code ui-btn-styled",
        )[0]
        .click();
    }
  };
})();
