---
order: 5
title: 优化你的图片。
---

图片文件中包含许多对于Web来说没有用的东西。举例来说，一个JPEG图片中可能包含一些*Exif*元数据（数据，相机型号，坐标等等）。一个PNG图片会包含有关颜色，元数据的信息，有时甚至还包含一个缩略图。这些只会增加文件的大小，而对于浏览器来说却毫无用处。

有很多工具能够帮你从图片中去除这些信息，并且不会降低图片的质量。我们把这个称做*无损*压缩。

另一种优化图片的方式是，以图片质量为代价进行压缩。我们称之为*有损*压缩。举例来说，当你到处一个JPEG图片时，你可以选择导出的图片质量（从0到100）。考虑到性能，总是选择可接受范围内的最低值。在PNG图片中，另一个常见的有损技术是减少颜色数量，或者将PNG-24格式转换为PNG-8格式。

为了提升用户的体验，你还应该将你的JPEG文件转换为渐进式的。现在大多数的浏览器都支持渐进式JPEG文件，并且这种格式的文件创建简单，没有明显的性能损失问题。页面中的这种格式的图片能够更快的展现([see demo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> [小工具](https://github.com/zenorocha/browser-diet/wiki/Tools#optimize-your-images) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*