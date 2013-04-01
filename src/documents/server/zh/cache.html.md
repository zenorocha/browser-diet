---
order: 4
title: 启用缓存
---

优化页面请求的最好的方法就是不要发送请求。避免不必要的请求最有效的方法之一就是让浏览器缓存资源。浏览器会默认决定缓存一个文件多久。但是我们能够控制这个缓存时间。

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

这个配置是在服务器上设置的。以Apache为例，你可以将下面的配置添加到`.htaccess`文件中：

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

这些配置设置图片、CSS和JS文件的缓存时间为6个月&mdash;推荐设置为最少一个月。其他服务器的设置类似。

需要牢记的一个事情时，一旦被浏览器缓存，那么这段时间内就不会去请求新的文件。如果我们改变了文件内容，浏览器使用的可能仍然是旧的文件。那么为了使用新的版本，我们需要改变这个文件的文件名。这么做的一种方法是在文件名中添加一些版本控制或时间戳的标记。举例来说，我们将`home.js`命名为`home-v1.js`，当需要更新版本时，将文件名改为`home-v2.js`等等.

另一种常见的做法是在文件URL中添加GET请求参数:类似`home.js?v=1`和`home.js?v=2`。这种做法与改变文件名的方法相比，缺点是有些代理服务器可能会忽略GET请求参数，这样的话你就没办法破坏浏览器的缓存了。

*> [参数](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
