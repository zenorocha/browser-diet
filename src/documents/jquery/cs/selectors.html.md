---
order: 12
title: Selektory
---

Selektory jsou jednou z nejdůležitějších věcí při použití JQuery. Existuje mnoho různých cest, jak vybrat element v DOMu, to ale neznamená, že jsou všechny stejně výkonné. Můžete vybrat element pomocí třídy, ID, metod jako `find()`, `children()`.

Mezi všemi, výběr podle ID je nejrychlejší, protože je založen na nativní operaci nad DOM:

```js
$("#foo");
```

*[> Výsledky na JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
