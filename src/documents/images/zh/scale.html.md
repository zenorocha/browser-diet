---
order: 6
title: 不要在 <img> 标签中调整图像
---

总是在`img`标签中设置`width`和`height`属性。这样可以防止渲染过程中的重绘和回流。

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

知道这个之后，一个开发者将一个*700x700px*的图像设置为*50x50px*来显示。

但是这个开发者不知道的是，大量的没有用的数据也发送到了客户端。

所以请记住：你可以在标签中设置一个图片的寬高，但不意味着你应该通过这么做来改变图片。

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#dont-rescale-images-in-markup)*