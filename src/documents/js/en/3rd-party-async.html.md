---
order: 19
title: Load 3rd party content asynchronously
---

Who never loaded a third-party content  to embed a Youtube video or like/tweet button?

The big problem is that these codes aren't always delivered efficiently, either by user's connection, or the connection to the server where they are hosted. Or this service might be temporarily down or even be blocked by the user's or his company's firewall.

To avoid it becoming a critical issue when loading a site or worse, lock the entire page load, always load these codes asynchronously (or use *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Alternatively, if you want to load multiple 3rd party widgets, you can Asyncronously load them with the following script:

```/*ASYNC Widgets */
      var scripts = {
      'plusone'       :   '//apis.google.com/js/plusone.js',
      'twitter'       :   '//platform.twitter.com/widgets.js',
      'someother'     :   '//s.widgetsite.com/widget.js'
      }

    for (var id in scripts) {
      script = document.createElement('script'); script.src = scripts[id];
      script.id = id;script.type = 'text/javascript'; script.async = true;
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(script);
    }
```

Make sure to name each script uniquely. E.G `someother` becomes 'Flattr', or 'Delicious'
      

*> Video: [comparison of a normal page vs a page where an inaccessible 3rd party content is loaded](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d).*
