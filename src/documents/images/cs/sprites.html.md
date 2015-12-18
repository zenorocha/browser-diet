---
order: 6
title: Použijte CSS Sprites
---

Tato technika se zabývá skládáním různých obrázků do jediného souboru.

<img id="img-sprite" src="https://browserdiet.com/en/assets/img/sprite-example.jpg" alt="CSS Sprite Example">

A jejich následném pozicování pomocí CSS.

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

Výsledkem je zásadní snížení počtu HTTP požadavků a nehrozí tak zdržování načítání dalších zdrojů vašich stránek.

Když používáte *sprite*, vyhněte se příliš velkým bílým místům mezi obrázky. Sice to neovlivňuje velikost souboru, má to ale vliv na spotřebu paměti.

I přes to, že skoro každý techniku spritů zná, není její použití široce rozšířeno&mdash;pravděpodobně proto, že vývojáři nepoužívají automatizační nástroje pro generování spritů. Vypíchli jsme několik takových, které vám s tím mohou pomoci.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-use-css-sprites) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*
