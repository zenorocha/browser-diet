---
order: 8
title: Utiliser des sprites pour le CSS
---

Cette technique consiste à grouper plusieurs images dans un seul fichier.

<img id="img-sprite" src="http://browserdiet.com/img/sprite-example.jpg" alt="CSS Sprite Example">

Et ensuite de les positionner avec CSS.

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

Par conséquent, vous réduisez considérablement le nombre de requêtes HTTP et évitez d'éventuels délais de téléchargement d'autres ressources sur votre page.

Lorsque vous utilisez votre *sprite*, évitez de laisser trop d'espace entre les images. Cela n'affectera pas la taille de votre fichier, mais aura un effet sur la consommation de la mémoire cache.

Bien que cette technique soit assez connue, son utilisation n'est pas très répandue&ndash;ce qui est peut-être dû au fait que les développeurs n'utilisent pas d'outils automatisés pour générer des sprites. Nous en avons sélectionné quelques-uns qui peuvent vous aider à faire ceci.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#use-css-sprites) / [References](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*