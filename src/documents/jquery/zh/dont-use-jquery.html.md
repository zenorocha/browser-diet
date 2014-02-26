---
order: 9
title: 不要使用jQuery...
---

...除非它是必需的。 :)

有时vanilla JavaScript要比jQuery简单一些。

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/en/assets/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

使用`attr()`方法来查询ID：

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

如果你能通过`this`的本身属性获得，还需要上面的方法吗？

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

而且这样还更快。

*> [Results on JSPerf](http://jsperf.com/browser-diet-this-attr-id-vs-this-id) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*
