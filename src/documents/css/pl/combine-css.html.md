---
order: 21
title: Scalanie wielu plików CSS
---

Kolejna dobra praktyka dla organizacji i obsługi stylów to dzielenie ich na mniejsze moduły.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="http://browserdiet.com/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

Jednak każdy z tych plików wymaga osobnego żądania HTTP (dobrze wiemy, że przeglądarki pobierają równolegle ograniczoną liczbę zasobów).

```html
<link rel="stylesheet" href="main.css" media="all">
```

Połącz swoje pliki CSS. Mniejsza liczba plików, daje w rezultacie mniejszą liczbę żądań i szybsze ładowanie strony.

Chcesz najlepszych wyników? Automatyzacja tego procesu poprzez narzędzia budowania.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#combining-multiple-css-files) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
