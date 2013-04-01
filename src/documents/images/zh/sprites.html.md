---
order: 8
title: 使用CSS Sprites
---

这个技术就是将各种图片整合到一个文件中去。

<img id="img-sprite" src="http://browserdiet.com/img/sprite-example.jpg" alt="CSS Sprite Example">

然后通过CSS去定位它们。

```css
.icon-foo {
  background-image: url('mySprite.png');
  background-position: -10px -10px;
}

.icon-bar {
  background-image: url('mySprite.png');
  background-position: -5px -5px;
}
```

这么做的结果就是，减少了HTTP请求数，避免延迟页面上的其他资源。

在使用*sprite*时，应当避免在每个图片之间的空隙过大。这个虽然不会影响到文件的大小，但是会影响到内存的消耗。

尽管每个人都知道sprites，但是这种技术并没有被广泛使用&mdash;或许是由于开发者没有使用自动化工具去生成。 我们着重介绍了一些工具，或许可以帮到你。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#use-css-sprites) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*
