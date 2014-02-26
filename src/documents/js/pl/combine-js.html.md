---
order: 13
title: Scalanie wielu plików JS w jeden
---

Bardzo dobrym rozwiązaniem dla organizacji i obsługi skryptów jest rozdzielenie ich na osobne moduły.

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="http://browserdiet.com/en/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

Jednak każdy z tych plików wymaga osobnego żądania HTTP (dobrze wiemy, że przeglądarki pobierają równolegle ograniczoną liczbę zasobów).

```html
<script src="main.js"></script>
```

Połącz swoje pliki JS. Mniejsza liczba plików, daje w rezultacie mniejszą liczbę żądań i szybsze ładowanie strony.

Chcesz najlepszych wyników? Automatyzacja tego procesu poprzez narzędzia budowania.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#combine-multiple-js-files-into-one) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
