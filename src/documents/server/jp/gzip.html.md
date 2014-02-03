---
order: 3
title: GZIP
---

サイトのコンテンツの大部分を占めるのは、シンプルなテキスト（HTML、CSS、JavaScript、JSON、XMLなど）です。この種のコンテンツには、サーバーでGZIP圧縮を有効にするのが良いプラクティスです。

ユーザーのブラウザに送信される前にサーバーでデータをGZIP圧縮します。これは何かファイルを送る前にそれを小さくするためzip圧縮することに似ています。

構成はサーバー上に設定されます。例えばApacheでは`.htaccess`ファイルを編集し、ファイルのタイプによってGZIPを有効にできます。

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

全てのポピュラーなサーバーは、簡単に設定できるようになっていて（ドキュメントを見てください）、パフォーマンスを改善する効果的な手段の1つです。

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#gzip)*
