---
order: 7
title: Use CSS Sprites
---

This technique is all about grouping various images into a single file.

<img id="img-sprite" src="http://assets.browserdiet.com/img/sprite-example.jpg" alt="CSS Sprite Example">

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

As a result, you've dramatically reduced the number of HTTP requests and avoided any potential delay of other resouces on your page.

When using your *sprite*, avoid leaving too much white space between images. This won't affect the size of the file, but will have an effect on memory consumption.

And despite nearly everyone knowing about sprites, this technique isn't widely used&mdash;perhaps due to developers not using automated tools to generate sprites. We've highlighted a few that can help you out with this.

 *> Useful tools: [SpritePad](http://wearekiss.com/spritepad), [Compass](http://compass-style.org/help/tutorials/spriting/), [SpriteMe](http://www.spriteme.org/), [Sprite Cow](http://www.spritecow.com/) and , [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*
