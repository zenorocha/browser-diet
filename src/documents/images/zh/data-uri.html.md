---
order: 5
title: Data URI
---

这种技术是CSS Sprites的替代方法。

[Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme)是指使用图片的数据代替通常使用的图片URI，在下面的例子中，我们就使用它减少了HTTP请求数。

使用前:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

使用后:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

所有的现代浏览器和IE8及以上版本的IE都支持这个方法，图片需要使用base64方法编码。

这种技术和CSS Sprites技术都是可以使用构建工具得到的。使用构建工具的好处是不用手工去进行图片的拼合替换，在开发时使用单独的文件就可以。

然而坏处是，随着你的HTML/CSS文件的增大增多，你必须考虑你可能会有一个非常大的图片。如果你在HTTP请求中没有使用gzip技术压缩你的HTML/CSS，那么我们不推荐使用这种方法，因为减少HTTP请求数得到的大文件对于速度来说可能带来相反的结果。

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-data-uri) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*
