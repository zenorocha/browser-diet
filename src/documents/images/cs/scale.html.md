---
order: 6
title: Neměňte velikost obrázků ve stránce
---

Vždy definujte atributy `width` a `height` obrázku. To zabrání zbytečnému překreslování stránky během renderování.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

John Q. Developer to ví, a má obrázek o rozměrech *700x700px*. Rozhodne se proto tuto techniku použít pro zobrazení obrázku jako *50x50px*.

Mr. Developer si ale neuvědomuje, že jsou zcela zbytečně přenášeny desítky *kilobytů* navíc.

Vždy mějte na mysli: jen proto, že je možné definovat výšku a šířku obrázku, neznamená to, že byste tuto věc měli použít pro změnšení obrázků.

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#dont-rescale-images-in-markup)*
