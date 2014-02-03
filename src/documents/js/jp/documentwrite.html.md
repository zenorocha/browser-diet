---
order: 16
title: document.writeを避ける
---

`document.write`を使用することは、ページが完全に読み込まれるその戻りでページへの依存を引き起こします。


この（悪い）プラクティスは開発者たちによって長年にわたって使用されなくなりましたが、幾つかのJavaScriptファイルのための同期フォールバックとして、必要なケースで未だに利用されています。

例えば、[HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/)では、Googleの*CDN*が応答しない場合にローカルのjQueryを読み込むテクニックとして使っています。

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> 注:** *`window.onload`の間か後に`document.write`を実行するのはページの全コンテンツを置き換えます。*


```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```
ページの結果は予想している*foobar*ではなく*bar*だけです。`window.onload`イベントの後に実行されたときも同様です。

```html
<span>foo</span>
<script>
  setTimeout(function() {
    document.write('<span>bar</span>');
  }, 1000);
  window.onload = function() {
    // ...
  };
</script>
```
予定された`setTimeout`が`window.onload`イベントの後に実行される場合でも、結果は前述の例と同じになります。

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#avoid-documentwrite)*
