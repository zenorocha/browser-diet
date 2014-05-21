---
order: 15
title: 避免使用document.write
---

The use of `document.write` causes a dependency to the page on its return to be fully loaded.

这个（坏）方法已经被开发者抛弃了很多年, 但是在某些情况下仍然是需要的，例如在一些Javascript文件的同步回退中。

举例来说，如果发现Google的CDN没有响应，[HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/)则会通过这个方法来调用本地的jQuery库。

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> 注意:** *如果在`window.onload`事件中或之后执行`document.write`方法，会将当前页面替换掉。*

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```
这段代码执行后的结果是页面中只会呈现出*bar*字符，而不是期望的出现*foobar*。在`window.onload`事件之后执行也是同样的结果。

```html
<span>foo</span>
<script>
  setTimeout(function() {
    document.write('<span>bar</span>');
  }, 1000);
  window.onload = function() {
    // ...
  };
</script>
```
这段代码执行的结果和上一段代码的结果相同。

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#avoid-documentwrite)*