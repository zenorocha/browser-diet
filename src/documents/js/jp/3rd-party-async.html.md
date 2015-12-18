---
order: 17
title: サードパーティのコンテンツの非同期読み込み
---

Youtubeのビデオやlike/tweetボタンを埋め込むためのサードパーティのコンテンツを読み込んだことがない人がいますか？

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="https://browserdiet.com/en/assets/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

これらのコードの大きな問題は、ユーザーの接続環境かホスティングされているサーバーの接続状態によって、常に効果的に配信される訳ではないということです。また、サービスが一時的にダウンしていたり、ユーザーかユーザーの会社のファイアウォールによってブロックされていることさえ有り得ます。

これがページの読み込み時に大きな問題とならないように、ページ全体の読み込みをロックするには、常にこれらのコードを非同期で読み込みましょう(もしくは *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)* を使いましょう)。

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

あるいは、複数のサードパーティウィジェットの読み込みたい場合、[このscript](https://gist.github.com/zenorocha/5161860)を用いて非同期で読み込ませることができます。


*> [動画](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*
