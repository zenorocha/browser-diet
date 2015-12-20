---
order: 19
title: 合并多个CSS文件
---

对于样式的组织和维护，另一个好方法是将他们模块化。

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="https://browserdiet.com/assets/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

然而，这样每个文件就是一个HTTP请求（我们都知道，浏览器的并行下载数是有限的）。

```html
<link rel="stylesheet" href="main.css" media="all">
```

所以，合并你的CSS文件。文件数量的减少就会带来请求数量的减少和更快的页面加载速度。

Want to have the best of both worlds? Automate this process through a build tool.

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
