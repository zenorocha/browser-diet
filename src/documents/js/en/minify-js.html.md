---
order: 14
title: Minify your script
---

Just like CSS, to maintain readable code, it's a good idea to write comments and use indentation:

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

But to the browser, none of this actually matters. For this reason, always remember to minify your JavaScript through automated tools.

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

This will shave bytes from the filesize, which results in faster downloads, parsing and execution.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-script) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-script)*