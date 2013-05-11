---
order: 6
title: Ne re-dimensionnez pas vos images dans la mise en page
---

Toujours définir les attributs 'width' et 'height' d'une image. Ceci évitera les "repaints" et "reflows" inutiles pendant la mise en page du rendu.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

Sachant cela, John Q. développeur qui a une image d'une taille de *700x700px* décide d'utiliser cette technique pour afficher une image de *50x50px*.

Ce que Mr. Developer ne réalise pas est que des dizaines de *kilobytes* inutiles seront envoyés aux clients.

Toujours garder en tête: juste parce que vous pouvez définir la largeur et hauteur d'une image en HTML ne signifie pas que vous devriez faire ceci pour re-dimensionner de larges images.

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#dont-rescale-images-in-markup)*