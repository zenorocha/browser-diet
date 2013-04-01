---
order: 3
title: GZIP
---

在一个网站中，站百分比最多的内容就是简单的文本(HTML, CSS, JavaScript, JSON, XML等)。对于这种内容来说，最好的实践就是在服务器端开启GZIP压缩。

在服务器发送数据前，使用GZIP进行压缩，然后再进行传输，当浏览器接收到数据后会进行解压缩。就像是给某人发文件前，先使用压缩来让文件变得更小。所有的现代浏览器和服务器都支持GZIP。

同样是需要在服务器上进行相应的设置。以Apache为例，你可以将下面的配置加入`.htaccess`文件中:

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```
所有当前流行的服务器都很容易设置(请查阅你的文档！)。这对提升页面性能来说是一个最有用的技巧。

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#gzip)*