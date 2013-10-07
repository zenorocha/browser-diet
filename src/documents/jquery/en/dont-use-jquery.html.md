---
order: 9
title: Don't always use jQuery...
---

Sometimes vanilla JavaScript can be easier and more performant the jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Consider the following html:

```html
<div id="text">Let's change this text</div>
```

Instead of doing this:

```js
$('#text').html('The text is changed').css({
	backgroundColor: 'red',
	color: 'yellow'
});
```

Use plain javacsript:

```js
var text = document.getElementById('text');
text.innerHTML = 'The text is changed';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

It's simple and MUCH faster. Check out the JSPerf results.

*> [Results on JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text)*
