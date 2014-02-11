---
order: 22
title: Minimalizuj swoje arkusze
---

Pisanie komentarzy i używanie wcięć poprawia czytelność kodu i ułatwia jego zarządzaniem.

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Struktura --- */

.intro {
  margin: 100px;
  position: relative;
}
```

Jednak dla przeglądarki nie ma to znaczenia. Z tego powodu pamiętaj zawsze o minimalizowaniu swoich arkuszy CSS poprzez automatyczne narzędzia.

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```

Takie golenie rozmiaru pliku, pozwoli w rezultacie na szybsze pobieranie, analizowanie i uruchamianie strony.

Osoby, które używają pre-procesorów jak [Sass](http://sass-lang.com/), [Less](http://lesscss.org/) i [Stylus](http://learnboost.github.com/stylus/), mają możliwość ustawienia minimlizowania przetworzonych stylów CSS.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-stylesheets) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-stylesheets)*
