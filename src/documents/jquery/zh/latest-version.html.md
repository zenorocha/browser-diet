---
order: 10
title: 总是使用最新版本jQuery
---

jQuery的核心团队通过改进代码的可读性、加入新的函数和优化现有的算法，不停地改进着这个库。

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="https://browserdiet.com/assets/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

正因为如此，请总是使用最新版本的jQuery。访问下面的地址，你总会得到最新的jQuery。

```html
http://code.jquery.com/jquery-latest.js
```

但是 _绝对_ 不要在一个`<script>`标签中引用这个地址，因为通过这个地址得到的总是最新的版本代码，所以如果你没有测试过，可能会造成一些问题。正确的做法是，你需要指明引用的jQuery的版本。

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

英明的[Barney Stinson](/img/new-is-always-better.gif)说过, *"New is always better"* :P

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#always-use-the-latest-version-of-jquery)*
