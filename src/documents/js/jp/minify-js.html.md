---
order: 12
title: scriptのミニファイ
---

CSSのように、可読性の高いコードを保つためには、コメントやインデントは良いアイディアです。

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

ですがブラウザにとってはそれは重要ではありません。従って、自動化ツールを使ってJavaScriptをミニファイすることを常に覚えておいてください。

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

それがファイルサイズを削ることになり、高速なダウンロード、解析、実行へとつながります。

*> [有用なツール](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-minify-your-script) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-script)*
