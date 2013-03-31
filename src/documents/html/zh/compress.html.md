---
order: 24
title: 压缩你的HTML
---

为了保持代码的可读性，最好的方法是在代码中添加注释和使用缩进。

```html
<p>Lorem ipsum dolor sit amet.</p>

<!-- My List -->
<ul>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</ul>
```

但是对于浏览器来说，这些都是不重要的。正因为如此，通过自动化工具压缩你的HTML是非常有用的。

```html
<p>Lorem ipsum dolor sit amet.</p><ul><li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li></ul>
```
<div class="img-right">
  <img id="htmlcompression-table" src="http://browserdiet.com/img/htmlcompressor-table.jpg" alt="HTML Compression Sample Results">
</div>

通过移除多余的空白符、注释和一些与内容结构无关的的不需要的字符，能够节省一些字节。

结果就是，你的用户能够享受到更快的下载、解析和执行。

右边的列表是一些例子，展示的是使用 [HTML Compressor](https://code.google.com/p/htmlcompressor/) 之后的结果，全都使用的是默认设置。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-html) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-html)*
