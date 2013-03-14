---
order: 15
title: Minimize Repaints and Reflows
---

Repaints and reflows are caused when there's any process of re-rendering the DOM when certain property or element is changed.

Repaints are triggered when the appearance of an element is changed without changing its layout. Nicole Sullivan describes this as a change of styles like changing a `background-color`.

Reflows are the most costly, since they are caused by changing the page layout, such as change the width of an element.

There is no doubt that excessive reflows and repaints should be avoided, so instead of doing this:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure");
var lis = document.getElementsByTagName('li');

for (var i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

Do this:

```js
var div = document.getElementById("to-measure");
var lis = document.getElementsByTagName('li');
var widthToSet = div.offsetWidth;

for (var i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

When you set `style.width`, the browser needs to recalculate layout. Usually, changing styles of many elements only results in one reflow, as the browser doesn't need to think about it until it needs to update the screen. However, in the first example, we ask for `offsetWidth`, which is the layout-width of the element, so the browser needs to recalculate layout.

If you need to read layout data from the page, do it all together before setting anything that changes layout, as in the second example.

*[> Demo](http://jsbin.com/aqavin/2/quiet)*
