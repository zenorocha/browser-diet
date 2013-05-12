---
order: 3
title: GZIP
---

A large percentage of a site's content is simple text (HTML, CSS, JavaScript, JSON, XML, etc.). For this kind of content, it's good practice to turn on GZIP compression at the server level.

GZIP compresses data on the server before sending it over the network to the user's browser, which decodes it on the fly for the user. It's just like zipping up a file before sending to someone to make it smaller. All modern browsers and servers support GZIP.

Configuration is set up on the server. On Apache, for example, you can edit the `.htaccess` file and turn on GZIP for the types of files that you want:

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

All popular servers are as just as simple to set up (consult the docs for yours!) and it's one of the most effective tips for improving page performance.

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#gzip)*
