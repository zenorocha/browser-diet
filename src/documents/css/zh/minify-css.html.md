---
order: 20
title: 压缩你的样式表
---

为了保持代码的可读性，最好的方法是在代码中添加注释和使用缩进：

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Structure --- */

.intro {
  margin: 100px;
  position: relative;
}
```

但是对于浏览器来说，这些都是不重要的。正因为如此，通过自动化工具压缩你的CSS是非常有用的。

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```

这样做能够减小文件的大小，从而得到更快的下载、解析和执行。

对于使用预处理器例如 [Sass](http://sass-lang.com/), [Less](http://lesscss.org/), and [Stylus](http://learnboost.github.com/stylus/), 你可以通过配置缩小编译输出的CSS代码。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-minify-your-stylesheets) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-stylesheets)*
