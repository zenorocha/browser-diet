---
order: 21
title: 尝试async
---

为了解释这个属性对于性能优化是多么有用，我们应该先明白，当不使用它时会发生什么。

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="http://browserdiet.com/en/assets/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```
使用上面这种方式时，页面会在这个脚本文件被完全下载、解析、执行完后才去渲染之后的HTML，在这之前会一直处于阻塞状态。这就意味着会增加你的页面的加载时间。有时这种行为是我们希望的，而大多数时候则不想要。

``` html
<script async src="example.js"></script>
```
使用上面这种方式时，脚本的加载是异步的，不会影响到这之后的页面解析。脚本会在下载完之后立即执行。需要注意的是，如果有多个使用这种方式异步加载的脚本，他们是没有特定的执行顺序的。

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#try-out-async)*
