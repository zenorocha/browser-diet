---
order: 21
title: Combining multiple CSS files
---

Another best practice for organization and maintenance of styles is to separate them into modular components.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="http://browserdiet.com/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

However, an HTTP request is required for each one of these files (and we know that browsers can only download a limited number resources in parallel).

```html
<link rel="stylesheet" href="main.css" media="all">
```

So combine your CSS. Having a smaller number of files will result in a smaller number of requests and a faster loading page.

Want to have the best of both worlds? Automate this process through a build tool.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#combining-multiple-css-files) / [References](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*