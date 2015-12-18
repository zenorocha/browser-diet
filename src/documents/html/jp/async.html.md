---
order: 21
title: asyncを試みる
---

この属性が、よりよいパフォーマンスのために有用であることを説明するには、これを使わないときに何が起きるかを理解した方がいいでしょう。

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="https://browserdiet.com/en/assets/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

この形式だとページは、それ以降のHTMLの解析とレンダリングをする前にscriptが完全にダウンロード、解析、実行されるのを待つ必要があります。 これはロード時間を大幅に増やすことになります。 時にはこの振る舞いが望ましいことがあるかもしれませんが、一般的には違います。

``` html
<script async src="example.js"></script>
```

scriptは、ページの残りの部分を解析している間に非同期でダウンロードされます。 scriptはダウンロードが完了したらすぐに実行されることが保証されます。

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#try-out-async)*
