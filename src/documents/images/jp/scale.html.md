---
order: 4
title: マークアップでの画像サイズ変更をしない
---

画像の`width`と`height`の属性を常に記述しましょう。これはレンダリング中の不要な再描画と再フローを避けることにつながります。

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

このことを知って、開発者のJohn Qは*700x700px*の画像を*50x50px*の画像として表示することにしました。

この開発者が理解していないことは、不要な数十*キロバイト*がネットワーク上で送信されることです。

常に覚えておいて欲しいのは: HTMLで画像のwidthとheightを記述できることが大きな画像のサイズを変更できることを意味している訳ではないということです。

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#dont-rescale-images-in-markup)*
