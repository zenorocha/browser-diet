---
order: 15
title: Minimize Repaints and Reflows
---

Repaints and reflows are caused when there's any process of re-rendering the DOM when certain property or element is changed.

Repaints are triggered when the appearance of an element is changed without changing its layout. Nicole Sullivan describes this as a change of styles like changing a `background-color`.

Reflows are the most costly, since they are caused by changing the page layout, such as change the width of an element.

There is no doubt that both reflows and repaints should be avoided, so instead of doing this:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var myList = document.getElementById("myList");

for (var i = 0; i < 100; i++) {
  myList.innerHTML += "<span>" + i + "</span>";
}
```

Do this:

```js
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

That way you avoid manipulating the DOM every iteration of the loop, doing this only once.

*[> Results on JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*
