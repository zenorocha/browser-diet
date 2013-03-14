---
order: 22
title: Nie używaj selektora uniwersalnego
---

Unikaj stosowania selektora ogólnego, ponieważ zmusza przeglądarkę do przeszukiwania **wszystkich** elementów HTML na stronie i stosowania reguł do każdego z nich.

<div class="img-right">
  <img src="http://browserdiet.com/img/4.png" alt="Geek #4" class="icos-geek" width="162" height="275" />
</div>

```CSS
* {
  margin: 0;
  padding: 0;
  border: none;
  text-decoration: none;
  outline: 0;
}
```

Taki selektor znajdzie wiele elementów, dla których część reguł nie będzie miało zwyczajnie zastosowania.

Z tego powodu, zalecamy stosowanie gotowych plików CSS Reset lub rozwijanie własnych.

*> Przydatne narzędzia: [Yahoo! Reset](http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css), [Normalize](http://necolas.github.com/normalize.css/) and [Eric Meyer's Reset](http://meyerweb.com/eric/tools/css/reset/).*
