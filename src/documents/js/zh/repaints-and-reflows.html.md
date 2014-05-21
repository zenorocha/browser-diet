---
order: 14
title: 最小化重绘和回流
---

当有任何属性或元素发生改变时，都会引起DOM元素的重绘和回流。

当一个元素的布局不变，外观发生改变时，就会引起重绘。Nicole Sullivan描述这个就像是样式的改变，例如改变`background-color`。

回流的代价是最高的，当改变一个页面的布局时就会发生回流，例如改变一个元素的宽。

毫无疑问，应当避免过多的重绘和回流，所以，对于下面的代码：

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/en/assets/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

应当变为：

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

当你设置`style.width`时，浏览器需要重新计算布局。通常，浏览器暂时是不需要知道改变了元素的样式的，直到它需要更新屏幕时，正因为如此，改变多个元素的样式只会产生一次回流。然而，在第一个例子中，我们每次请求`offsetWidth`时，都会使浏览器重新计算布局。

如果需要得到页面中的布局数据，那么请参照第二个例子，将这些操作放在任何会改变布局的设置前。

*> [示例](http://jsbin.com/aqavin/2/quiet) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*
