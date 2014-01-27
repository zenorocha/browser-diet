---
order: 10
title: Korzystaj z `for` zamiast `each`
---

Korzystanie z natywnych funkcji JavaScript prawie zawsze jest szybsze niż te wykonywanw w jQuery. Z tego powodu, zamiast metody `jQuery.each` używaj pętli `for` w JavaScript.

Zwróć jednak uwagę, pomimo, że instrukcja `for in` jest natywna to w wielu przypadkach wydajnościowo wypada gorzej niż `jQuery.each`.

Wypróbowana i sprawdzona pętla `for` daje nam kolejną możliwość przyspieszenia poprzez buforowanie długości przetwarzanej kolekcji.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

Używanie odwrotnych pętli `while` i `for` stanowi gorący temat w środowisku programistycznym jako najszybsze sposoby iterowania elementów. Niestety są unikane, ze względu na mniejszą czytelność.

```js
// odwrotnych while
while ( i-- ) {
  // ...
}

// odwrotnych for
for ( var i = array.length; i--; ) {
  // ...
}
```

*[> Wyniki w JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*
