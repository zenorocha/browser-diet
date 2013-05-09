---
order: 7
title: Data URI
---

Cette technique est une alternative à l'utilisation de CSS sprites.

Un [Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme) est un moyen d'aligner le contenu de l'URI que vous donneriez au navigateur en temps normal. Dans cet exemple, on l'utilise pour aligner le contenu des images d'arrière-plan en CSS pour réduire le nombre de requêtes HTTP requises pour charger la page.

Avant:

```css
.icon-foo {
background-image: url('foo.png');
}
```

Après:

```css
.icon-foo {
background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```
Touts les navigateurs depuis IE8 et haut-dessus supportent cette technique d'encodage en base64.

Cette méthode et celle qui utilise les sprites requièrent des outils de dévelopepment pour qu'elles soient maintenables. Cette méthode a l'avantage de ne pas avoir besoin de disposer les images manuellement puisqu'elle conserve vos images dans des fichiers séparés pendant la phase de développement.

Cependant elle a le désavantage d'augmenter la taille de votre HTML/CSS considérablement si vous avez des images volumineuses. Ca n'est pas recommendé d'utiliser cette méthode si vous ne gzippez pas votre HTML/CSS pendant les requêtes HTTP puisque le surplus de taille pourrait contre-balancer la rapidité que vous avez en minimisant le nombre de requêtes HTTP.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#data-uri) / [References](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*