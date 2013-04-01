---
order: 26
title: 避免 内联式/嵌入式 代码
---

你可以通过三种方式在HTML页面中引入CSS或Javascript代码:

**1) 内联式:** 在HTML标签的`style`属性中定义样式，在`onclick`这样的属性中定义Javascript代码;

**2) 嵌入式:** 在页面中使用`<style>`标签定义样式，使用`<script>`标签定义Javascript代码;

**3) 引用外部文件:** 在`<style>`标签中定义`href`属性引用CSS文件，在`<script>`标签中定义`src`属性引入Javascript文件.

尽管前两种方式减少了HTTP请求数，可是实际上却增加了HTML文档的体积。不过，当你的页面中的CSS或者Javascript代码足够少，反而是开启一个HTTP请求的花费要更大时，采用这两种方式却是最有用的。因此，你需要测试评估这种方式是否真的提升了速度。同时也要考虑到你的页面的目标和它的受众：如果你期望人们只会访问它一次，例如对一些临时活动来说，你决不会期望有回访客出现，那么使用内联式/嵌入式代码能够帮助减少HTTP请求数。

*> 尽量避免在你的HTML中手工编写CSS/JS（首选的方法是通过工具实现这个过程的自动化）。*

第三种方式不仅使你的代码更有序，而且使得浏览器能够缓存它。这种方式在大多数的情况下都是首选，特别是一些大文件和多页面的情况。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#avoid-inlineembedded-code) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#avoid-inlineembedded-code)*
