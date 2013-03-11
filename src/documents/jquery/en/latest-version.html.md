---
order: 12
title: Always use the latest version of jQuery
---

The core jQuery team is always looking to bring improvments to the library, through better code readability, new functionality and optimization of existing algorithms.

For this reason, always the latest version of jQuery.

```html
<script src="http://code.jquery.com/jquery-latest.js"></script>
```

But be careful! We should avoid referencing the file like we've just done as this can create problems in the future as newer versions are automatically served to that URL.

Instead, link to the latest version of jQuery that you need specificically.

```html
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
```

Just like the wise [Barney Stinson](/assets/img/new-is-always-better.gif) says, *"New is always better"* :P
