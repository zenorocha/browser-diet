---
order: 8
title: Use CSS Sprites
---

This technique is all about grouping various images into a single file.

<img id="img-sprite" src="http://browserdiet.com/img/sprite-example.jpg" alt="CSS Sprite Example">

And then positioning them with CSS.

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

As a result, you've dramatically reduced the number of HTTP requests and avoided any potential delay of other resources on your page.

When using your *sprite*, avoid leaving too much white space between images. This won't affect the size of the file, but will have an effect on memory consumption.

And despite nearly everyone knowing about sprites, this technique isn't widely used&mdash;perhaps due to developers not using automated tools to generate sprites. We've highlighted a few that can help you out with this.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#use-css-sprites) / [References](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*