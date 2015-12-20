---
order: 17
title: 异步加载第三方内容
---

嵌入一个Youtube视频或者一个like/tweet按钮，有人没有加载过这样的第三方内容吗？

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="https://browserdiet.com/assets/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

问题在于，不管是用户端的还是服务器端的连接，都无法保证这些代码是正常有效的工作的。这些服务有可能临时dowan掉或者是被用户或者其公司的防火墙阻止。

为了避免这些在页面加载时成为问题，或者更严重的是，阻塞了全部页面的加载，总是应该异步加载这些代码 (或者使用 *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

另外，如果你想加载多个第三方插件，你可以使用[这个代码](https://gist.github.com/zenorocha/5161860)来实现异步的加载。

*> [视频](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*
