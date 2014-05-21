---
order: 4
title: Ne re-dimensionnez pas vos images dans la mise en page
---

Toujours définir les attributs 'width' et 'height' d'une image. Ceci évitera les "repaints" et "reflows" inutiles pendant la mise en page du rendu.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

Sachant cela, John Q. Developer ayant une image de taille *700x700px*, décide d'utiliser cette technique pour afficher une image de *50x50px*.

Ce que M. Developper ne réalise pas, c'est que des dizaines de *kilobytes* inutiles seront alors envoyés aux clients.

Gardez toujours cela en tête : ce n'est pas parce que vous pouvez définir la largeur et hauteur d'une image en HTML que vous devez le faire pour re-dimensionner de larges images.

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#dont-rescale-images-in-markup)*