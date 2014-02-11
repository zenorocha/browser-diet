---
ignored: true
order: 11
title: Wykorzystaj zalety wywoływania metod po sobie
---

Łańcuchowe wywołanie oznacza, że możesz wywołać jedną metodę jQuery zaraz po drugiej bez konieczności ponownego określania selektora. Praktycznie wszystkie metody jQuery umożliwiają łańcucowe wywołanie poprzez zwrot obiektu jQuery.

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Badania pokazują, że osobne wywołania mogą być wolniejsze.

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

*[> Wyniki w JSPerf](http://jsperf.com/browser-diet-chaining)*
