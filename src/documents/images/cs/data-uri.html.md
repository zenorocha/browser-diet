---
order: 7
title: Data URI
---

Tato technika je alternativou k používání CSS spritů.

[Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme) je způsob, jak inlinově vložit obsah namísto jeho odkazování pomocí URI, jak je to běžné. V tomto případě to použijeme k inlinovému vložení obrázku ve vlastnosti CSS background. Snížíme tak počet HTTP požadavků, které stránka potřebuje.

Předtím:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

Potom:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

Všechny prohlížeče od IE8 a vyšší podporují techniku kódování pomocí base64.

Stejně tak jako CSS sprity, i tato metoda potřebuje nástroje, které činnost zautomatizují v okamžiku buildu. Tato metoda je výhodná v tom, že obrázky mohou být každý ve svém souboru a při vývoji tak nekomplikuje práci.

Naopak, nevýhoda je ve značně narůstající velikosti HTML/CSS, jestliže máte velké obrázky. Využití metody se nedoporučuje, pokud nepoužíváte gzipování vašich HTML/CSS. Režie pro zakódování a vložení do stránky může negativně převážit zrychlení získané nižším počtem HTTP požadavků.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#data-uri) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*