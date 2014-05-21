---
order: 18
title: 使用 <link> 标签而不是 @import
---

有两种方式可以引入一个外部的样式表：通过 `<link>` 标签：

```html
<link rel="stylesheet" href="style.css">
```

或者通过 `@import` 指令 (使用在一个外部样式表中或者页面内嵌的 `<style>` 标签中):

```css
@import url('style.css');
```

当你在一个外部样式表中使用第二种方式时，浏览器无法通过并行下载的方式下载这个资源，这样就会导致其他资源的下载被阻塞。

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#prefer--over-import)*