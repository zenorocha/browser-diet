---
order: 20
title: Minimalizujte vaše kaskádové styly
---

Pro udržení čitelného kódu je rozumné psát komentáře a používat odsazení:

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Structure --- */

.intro {
  margin: 100px;
  position: relative;
}
```

Ale prohlížeči na ničem z toho nezáleží. Proto vždy pamatujte na minimalizaci vašich CSS pomocí automatizovaných nástrojů.

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```

Minimalizace ořeže přebytečné bajty ze souboru, což vede k rychlejšímu stažení, parsování a spuštění.

Pro ty, kteří používají pre-procesory jako [Sass](http://sass-lang.com/), [Less](http://lesscss.org/), a [Stylus](http://learnboost.github.com/stylus/), je možné nakonfigurovat, aby byl kompilovaný CSS výstup minimalizován.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-minify-your-stylesheets) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-stylesheets)*
