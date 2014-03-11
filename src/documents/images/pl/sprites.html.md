---
order: 8
title: Korzystaj ze sprite'ów CSS
---

Technika ta polega na grupowaniu różnych obrazów w jednym pliku.

<img id="img-sprite" src="http://browserdiet.com/en/assets/img/sprite-example.jpg" alt="CSS Sprite Example">

A następnie umieszczaniu ich w CSS.

```css
.icon-foo {
  background-image: url('mySprite.png');
  background-position: -10px -10px;
}

.icon-bar {
  background-image: url('mySprite.png');
  background-position: -5px -5px;
}
```

W rezultacie, znacznie zmniejszamy liczbę żądań HTTP i unikamy potencjalnych opóźnień dla innych zasobów naszej strony.

Kiedy używamy *ikonek*, unikamy pozostawiania zbyt dużej pustej przestrzeni miedzy obrazami. Nie ma to wpływu na rozmiar pliku, ale ma wpływ na zużycie pamięci.

Pomimo szerokiej wiedzy na temat sprite'ów, technika ta nie jest często stosowana&mdash;może, ze względu na brak stosowania narzędzi do automatycznego generowania sprite'ów. Poniżej przedstawiamy listę narzędzi, które okażą się bardzo pomocne.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-use-css-sprites) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)
