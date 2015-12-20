---
order: 11
title: 将多个JS文件合并
---

对于脚本的组织和维护，另一个好方法是将他们模块化。

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="https://browserdiet.com/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

然而，这样每个文件就是一个HTTP请求（我们都知道，浏览器的并行下载数是有限的）。

```html
<script src="main.js"></script>
```

所以，合并你的JS文件。文件数量的减少就会带来请求数量的减少和更快的页面加载速度。

想要两全其美？通过构建工具自动化这个过程吧。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combine-multiple-js-files-into-one) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
