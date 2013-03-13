---
order: 21
title: Don't use the universal selector
---

Avoid using the universal selector as it forces the browser to search over **all**  HTML elements in the page, and after apply the rule to each one.

<div class="img-right">
  <img src="http://browserdiet.com/img/4.png" alt="Geek #4" class="icos-geek" width="162" height="275" />
</div>

```CSS
* {
  margin: 0;
  padding: 0;
  border: none;
  text-decoration: none;
  outline: 0;
}
```

There will also be many elements that certain attributes just won't have any effect on.

For this reason, we recommend that you use a CSS Reset, or roll your own.

*> Useful tools: [Yahoo! Reset](http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css), [Normalize](http://necolas.github.com/normalize.css/) and [Eric Meyer's Reset](http://meyerweb.com/eric/tools/css/reset/).*
