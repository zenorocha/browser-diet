---
order: 12
title: 压缩你的脚本
---

和CSS一样，为了保持代码的可读性，最好的方法是在代码中添加注释和使用缩进：

```js
BrowserDiet.app = function() {

  var foo = true;

  return {
    bar: function() {
      // do something
    }
  };

};
```

但是对于浏览器来说，这些都是不重要的。正因为如此，请记住用自动化工具压缩你的Javascript代码。

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

这样做能够减小文件的大小，从而得到更快的下载、解析和执行。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-minify-your-script) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-script)*
