---
order: 17
title: Buforuj długość tablicy
---

Pętla jest bez wątpienia jednym z najważniejszych elementów związanych z wydajności JavaScript. Optymalizacja logiki wewnątrz pętli jest ważna, ponieważ każda z operacji jest wykonywana wielokrotnie.

Jednym ze sposobów na to jest zapisanie rozmiaru tablicy, która będzie przetwarzana, z tego powodu nie będzie konieczne jego obliczanie przy każdej iteracji.

```js
var arr = new Array(1000);

for (var i = 0; i < arr.length; i++) {
  // źle - rozmiar jest obliczany 1000 razy
}

for (var i = 0, len = arr.length; i < len; i++) {
  // dobrze - rozmiar jest obliczny 1 raz i dalej przechowywany
}
```

*[> Wyniki w JSPerf](http://jsperf.com/browser-diet-cache-array-length/)*

**> Uwaga:** *Chociaż silniki nowoczesnych przeglądarek automatycznie optymalizują ten proces, pamiętaj o dobrych praktykach programistycznych w starszych przeglądarkach.*


Przetwarzanie kolekcji w HTML jako listy węzłów (*NodeList*) generowanej przykładowo przez `document.getElementsByTagName('a')` jest krytyczne. Takie kolekcje są traktowane "dynamicznie", co oznacza automatyczne aktualizowanie w przypadku zmian w elemenci nadrzędnym.

```js
var links = document.getElementsByTagName('a');

for (var i = 0; i < links.length; i++) {
  // źle - każda iteracja pętli wymaga przeliczenia listy, czy nie nastąpiła zmiana
}

for (var i = 0, len = links.length; i < len; i++) {
  // dobrze - rozmiar listy jest uzyskany i przechowywany, później porównywany w kolejnych iteracjach
}

// Straszne: przykład pętli nieskończonej
for (var i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // każda iteracji pętli zwiększa liczbę elementów, warunek końca pętli nie zostanie nigdy osiągnięty
  // Byłoby inaczej, gdyby rozmiar listy był przechowywany i używany jako warunek pętli
}
```

*> [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#cache-array-lengths*
