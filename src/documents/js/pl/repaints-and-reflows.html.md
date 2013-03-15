---
order: 16
title: Ograniczaj ponownego malowania i rysowanie elementów
---

Ponowne malowanie i rysowanie elementów powstaje w momencie generowania drzewa DOM po zmianie właściwości elementu lub samego elementu.

Ponowne malowanie jest wyzwalane, gdy zmienia się wygląd elementu, ale nie jego układ. Nicole Sullivan opisuje to jako zmianę stylów, na przykład atrybutu `background-color`.

Ponowne rysowanie jest najbardziej kosztowne, ponieważ jest spowodowane przez zmianę układu strony, na przykład zmianę szerokości elementu.

Nie ma wątpliwości, że zarówno ponowne malowania i rysowania elementów powinny być unikane, więc zamiast w ten sposób:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var myList = document.getElementById("myList");

for (var i = 0; i < 100; i++) {
  myList.innerHTML += "<span>" + i + "</span>";
}
```

Zróbmy to tak:

```js
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

W ten sposób unikamy manipulacji drzewa DOM w każdej iteracji pętli, robiąc to w rzeczywistości tylko raz.

*[> Wyniki w JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*
