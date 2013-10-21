---
order: 9
title: Don't always use jQuery...
---

Sometimes vanilla JavaScript can be easier and more performant than jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Consider the following HTML:

```html
<div id="text">Let's change this content</div>
```

Instead of doing this:

```js
$('#text').html('The content is changed').css({
  backgroundColor: 'red',
  color: 'yellow'
});
```

Use plain JavaScript:

```js
var text = document.getElementById('text');
text.innerHTML = 'The text is changed';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

It's simple and **much** faster.

*> [Results on JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text) / [References](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*