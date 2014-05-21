---
order: 9
title: Selektory
---

Selektory stanowią jeden z najpoważniejszych problemów przy korzystaniu z jQuery. Istnieje wiele różnych sposobów wyboru elementu z DOM, ale nie wszystkie mają taką samą wydajność, kiedy szukasz według klasy, identyfikatora lub moetod typu `find()`, czy `children()`.

Spośród wszystkich dostępnych, wybieranie poprzez ID jest najszybsze, ponieważ opiera się o natywne operacje w DOM:

```js
$("#foo");
```

*[> Wyniki w JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
