---
order: 11
title: Combine multiple JS files into one
---

Another best practice for organization and maintenance of scripts is to separate them into modular components.

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="https://browserdiet.com/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

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

It's good to have in mind that the cost of new requests is much cheaper with HTTP/2. Maybe you shouldn't concatenate all your JS files in a sigle one. It doesn't mean that we should use hundreds of different files. Requests still have a cost. But it's worth measuring the impact of having a few separated files instead of a single one. We get better modularity, cache independency and a simpler build process. And if you load them all asynchronously the code is executed faster, as soon as the responses arrive.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combine-multiple-js-files-into-one) / [References](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
