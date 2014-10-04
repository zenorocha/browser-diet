---
order: 13
title: Unikaj niepotrzebnych manipulacji DOM
---

Za każdym razem, gdy niepotrzebnie odwołujesz się do drzewa DOM, umiera Panda.

Poważnie, przeglądanie elementów DOM jest kosztowne. Silniki JavaScriptu są coraz wydajniejsze i szybsze, ale zawsze lepsze jest ograniczenie odwołań do drzewa DOM.

Jednym z najprostszych sposobów optymalizacji jest przechowywanie często używanych elementów DOM. Na przykład, zamiast odpytywania DOM w każdej iteracji pętli, pytamy raz i przechowujemy wynik w zmiennej, dostępnej dla każdej iteracji.

```js
// bardzo źle!
for (var i = 0; i < 100; i++) {
  document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}
```

```js
// nieco lepiej :)
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

*> [Wuniki w JSPerf](http://jsperf.com/browser-diet-dom-manipulation/11)*