---
order: 20
title: Preferujte <link> před @import
---

Existují dvě varianty, jak vložit externí styl do stránky: buď pomocí značky `<link>`:

```html
<link rel="stylesheet" href="style.css">
```

nebo pomocí direktivy `@import` (uvnitř externího stylu nebo ve značce `<style>`):

```css
@import url('style.css');
```

Pokud použijete druhou variantu v externím stylu, prohlížeč není schopen stahovat soubor paralelně, což může způsobit zdržení při stahování dalších souborů.

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#prefer--over-import)*