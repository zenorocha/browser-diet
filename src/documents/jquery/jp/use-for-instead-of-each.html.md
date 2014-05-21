---
order: 8
title: eachの代わりにforを使用する
---

生のJavaScriptの機能はほぼ常にjQueryのそれよりも高速です。そのため、`jQuery.each`を使用する代わりにJavaScriptの`for`ループを使用しましょう。

ですが注意してほしいのは、`for in`はネイティブですが、ほとんどのケースで`jQuery.each`よりも性能が低いです。

そしてよくテストされた`for`ループは、反復処理において集合の長さをキャッシュしておくことでパフォーマンスより良くする機会を与えてくれます。

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

反対の`while`や`for`ループはコミュニティにおいてホットなトピックで、反復処理の最速な形式として頻繁に引用されます。 ですが、可読性の低下を理由に一般的には使用されません。

```js
// reverse while
while ( i-- ) {
  // ...
}

// reverse for
for ( var i = array.length; i--; ) {
  // ...
}
```

*> [JSPerfの結果](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [References](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*
