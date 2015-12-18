---
order: 7
title: jQueryを常に使用しない・・・
---

時に生のJavaScriptはjQueryよりも容易でより高性能です。

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="https://browserdiet.com/en/assets/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

以下のようなHTMLがあったとして:

```html
<div id="text">Let's change this content</div>
```

このようにする代わりに:

```js
$('#text').html('The content has changed').css({
  backgroundColor: 'red',
  color: 'yellow'
});
```

生のJavaScriptを使用しましょう:

```js
var text = document.getElementById('text');
text.innerHTML = 'The content has changed';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

この方がシンプルで **より**高速です。

*> [JSPerfの結果](http://jsperf.com/jquery-vs-javascript-performance-text) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*
