---
order: 20
title: Préférez <link> à @import
---

Il y a deux façons d'inclure une feuille de style externe dans votre page : soit via la balise `<link>` :

```html
<link rel="stylesheet" href="style.css">
```

Soit avec la directive `@import` (à l'intérieur d'une feuille de style externe ou dans une balise `<style>`) :

```css
@import url('style.css');
```

Lorsque vous utilisez la seconde option dans une feuille de style externe, le navigateur est incapable de télécharger le reste du fichier en parallèle, ce qui peut bloquer le téléchargement des autres contenus.

*> [Références](https://github.com/zenorocha/browser-diet/wiki/References#prefer--over-import)*