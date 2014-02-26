---
order: 4
title: 賢いキャッシュを有効に
---

あなたのページからのリクエストを最適化する最善の方法は、間違いなく、リクエストをしないことです。不要なリクエストを避ける有用な手法の1つは、アセットをブラウザにキャッシュさせることです。デフォルトではブラウザがどの期間ファイルをキャッシュするかを決めます。ですが、私たちはキャッシュを保つ期間を正確にコントロールできます。

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/en/assets/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

このタイプの構成はサーバ上で行なわれます（そしてあなたが持つサーバの設定に依存します）。例えば、Apacheであれば`.htaccess`ファイルに以下の設定を加えられます。

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

これらの命令は画像とCSSとJSを6ヶ月キャッシュします。&mdash;少なくとも1ヶ月はキャッシュすることが推奨されます。他のサーバも同じように設定できます。

1つ覚えておくべき重要なことは、一度キャッシュされるとブラウザが新たにリクエストすることは無いということです。 そのファイルの内容を変更する必要があれば私たちが期待しているようには動きません。 新たなバージョンを送信するにはファイルの名前を変更する必要があります。 その方法としてはバージョンの幾つかの形式を付与するか、ファイル名にタイムスタンプを付けることです。例えば、`home.js`の代わりに`home-v1.js`とするか、アップデートする際にファイル名を`home-v2.js`などに変更することです。

他のキャッシュ除去の形式はURLでGETパラメータを使用することです: `home.js?v=1`と`home.js?v=2`のように。 必要な時にキャッシュを消せなくなるがキャッシュのルールには準拠しているこの方法は、ファイル名の変更をする上で幾つかのインターネットのプロキシはGETパラメータを認識できないデメリットがあります。


*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
