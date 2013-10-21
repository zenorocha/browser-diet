---
order: 18
title: Load 3rd party content asynchronously
---

Who has never loaded a third-party content to embed a Youtube video or like/tweet button?

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="http://browserdiet.com/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

The big problem is that these codes aren't always delivered efficiently, either by user's connection, or the connection to the server where they are hosted. Or this service might be temporarily down or even be blocked by the user's or his company's firewall.

To avoid it becoming a critical issue when loading a site or worse, lock the entire page load, always load these codes asynchronously (or use *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Alternatively, if you want to load multiple 3rd party widgets, you can asynchronously load them with using [this script](https://gist.github.com/zenorocha/5161860).

*> [Video](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [References](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*
