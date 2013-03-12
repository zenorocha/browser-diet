---
order: 17
title: Cache array lengths
---

The loop is undoubtedly one of the most important parts related to JavaScript performance. Try to optimize the logic inside a loop so that each iteration is done efficiently.

One way to do this is to store the size of the array that will be covered, so it doesn't need to be recalculated every time the loop is iterated.

```js
var arr = new Array(1000),
    i;

for (i = 0; i < arr.length; i++) {
  // Bad - size needs to be recalculated 1000 times
}
```
```js

var arr = new Array(1000),
    len = arr.length,
    i;

for (i = 0; i < len; i++) {
  // Good - size is calculated only 1 time and then stored
}
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-cache-array-length/)*

**> Note:** *Although modern browsers engines automatically optimize this process, remains a good practice to suit the legacy browsers that still linger.*

In iterations over collections in HTML as a list of Nodes (*NodeList*) generated for example by `document.getElementsByTagName('a')` this is particularly critical. These collections are considered "live", i.e. they are automatically updated when there are changes in the element to which they belong.

```js
var links = document.getElementsById('a'),
    i;

for (i = 0; i < links.length; i++) {
  // Bad - each iteration the list of links will be recalculated to see if there was a change
}
```
```js
var links = document.getElementsById('a'),
    len = links.length,
    i;

for (i = 0; i < len; i++) {
  // Good - the list size is first obtained and stored, then compared each iteration
}
```
```js
var links = document.getElementsById('a'),
    i;

// Terrible: infinite loop example
for (i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // each iteration the list of links increases, never satisfying the termination condition of the loop
  // this would not happen if the size of the list was stored and used as a condition
}
```
