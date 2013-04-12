---
order: 24
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

Osoby, które używają pre-procesorów jak *Sass*, *Less* i *Stylus*, mają możliwość ustawienia minimlizowania przetworzonych stylów CSS.

*> Przydatne narzędzia: [YUI Compressor](http://developer.yahoo.com/yui/compressor/), [CSS Minifier](http://www.cssminifier.com/) e [cssmin.js](http://www.phpied.com/cssmin-js/).*
