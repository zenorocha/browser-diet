---
order: 10
title: Zawsze korzystaj z najnowszej wersji jQuery
---

Główny zespół jQuery zawsze stara się wnieść poprawki do biblioteki, dzięki lepszej czytelności kodu, nowym funkcjonalnościom i optymalizacji istniejących algorytmów.

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/en/assets/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

Z tego powodu, zawsze używaj najnowszej wersji jQuery, która jest dostępna tutaj, jeśli chcesz skopiować skrypt lokalnie:

```html
http://code.jquery.com/jquery-latest.js
```

Jednak _nigdy_ nie używaj tego adresu w znaczniku `<script>`, ponieważ spowoduje to problemy w przyszłości, kiedy twoja strona automatycznie pobierze aktualne wydanie biblioteki i nie będzie szansy na jej wcześniejsze przetestowanie. Zamiast tego określ dokładnie, której wersji jQuery potrzebujesz.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

Tak jak mądry [Barney Stinson](/img/new-is-always-better.gif) mówi, *"Nowe jest zawsze lepsze"* :P

*> [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#always-use-the-latest-version-of-jquery)*
