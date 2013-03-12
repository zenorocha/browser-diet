---
order: 12
title: Always use the latest version of jQuery
---

The core jQuery team is always looking to bring improvements to the library, through better code readability, new functionality and optimization of existing algorithms.

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

For this reason, always use the latest version of jQuery, which is always available here, if you want to copy it to a local file:

```html
http://code.jquery.com/jquery-latest.js
```

But _never_ reference that URL in a `<script>` tag, it may create problems in the future as newer versions are automatically served to to your site
before you've had a chance to test them. Instead, link to the latest version of jQuery that you need specifically.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

Just like the wise [Barney Stinson](/img/new-is-always-better.gif) says, *"New is always better"* :P
