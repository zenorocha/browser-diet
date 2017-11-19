---
order: 19
title: Combining multiple CSS files
---

Another best practice for organization and maintenance of styles is to separate them into modular components.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="https://browserdiet.com/assets/img/9.png" alt="Geek #9" width="122" height="275" />
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

It's good to have in mind that the cost of new requests is much cheaper with HTTP/2. Maybe you shouldn't concatenate all your CSS files in a sigle one. It doesn't mean that we should use hundreds of different files. Requests still have a cost. But it's worth measuring the impact of having a few separated files instead of a single one. We get better modularity, cache independency and a simpler build process.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [References](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
