---
order: 5
title: keep-alive
---

クライアントとサーバ間の通信があるように、すべてのHTTPリクエストは確立されたTCP接続が必要になります。

「TCP」接続はコストが掛かり、時間も掛かる（3ウェイハンドシェイクのために）ので、新たに作られたTCP接続に他のHTTPリクエストを同じ「トンネル」へ再利用することがとても重要です。

この設定はkeep-aliveと呼ばれます。

設定はサーバーに固有です。 例えばApacheでは、`.htaccess`で以下の部分を編集します。

```
<IfModule mod_headers.c>
  Header set Connection keep-alive
</IfModule>
```

*> [リファレンス](https://github.com/cleberdantas/browser-diet/wiki/References#wiki-keep-alive)*
