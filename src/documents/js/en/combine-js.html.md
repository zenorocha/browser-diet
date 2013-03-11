---
order: 13
title: Combine multiple JS files into one
---

Another best practice for organization and maintenance of scripts is to separate them into modular components.

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

However, an HTTP request is required for each one of these files (and we know that browsers can only download a limited number resources in parallel).

```html
<script src="main.js"></script>
```

So combine your JS. Having a smaller number of files will result in a smaller number of requests and a faster loading page.

Want to have the best of both worlds? Automate this process through a build tool.

*> Useful tools: [Grunt](http://gruntjs.com/), [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*
