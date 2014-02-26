---
order: 15
title: Ograniczaj ponowne malowanie i rysowanie elementów
---

Ponowne malowanie i rysowanie elementów powstaje w momencie generowania drzewa DOM po zmianie właściwości elementu lub samego elementu.

Ponowne malowanie jest wyzwalane, gdy zmienia się wygląd elementu, ale nie jego układ. Nicole Sullivan opisuje to jako zmianę stylów, na przykład atrybutu `background-color`.

Ponowne rysowanie jest najbardziej kosztowne, ponieważ jest spowodowane przez zmianę układu strony, na przykład zmianę szerokości elementu.

Nie ma wątpliwości, że zarówno ponowne malowanie i rysowanie elementów powinny być unikane, więc zamiast w ten sposób:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/en/assets/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

Zróbmy to tak:

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

Po ustawieniu `style.width`, przeglądarka ponownie oblicza układ. Przeważnie, zmiany stylów dla wielu elementów powodują pojedyncze rysowanie, dopóki przeglądarka nie musi myśleć, o tym, że aktualizuje ekran. Jednakże, w pierwszym przykładzie potrzebujemy wartości `offsetWidth`, która jest szerokością elementu, więc przeglądarka potrzebuje przeliczenia układu.

Jeśli potrzebujesz informacji o układzie, pobierz wszystko zanim cokolwiek zmienisz, tak jak w przykładzie drugim.

*> [Demo](http://jsbin.com/aqavin/2/quiet) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*
