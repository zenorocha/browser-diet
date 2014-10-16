---
order: 5
title: Data URI
---

Cette technique est une alternative à l'utilisation des sprites CSS.

Un [Data-URI](http://fr.wikipedia.org/wiki/Data_URI_scheme) est un moyen d'intégrer le contenu de l'URI que vous donneriez au navigateur en temps normal. Dans cet exemple, on l'utilise pour intégrer le contenu des images d'arrière plan en CSS afin de réduire le nombre de requêtes HTTP requises pour charger la page.

Avant :

```css
.icon-foo {
  background-image: url('foo.png');
}
```

Après :

```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

Tous les navigateurs depuis IE8 et haut-dessus supportent cette technique d'encodage en base64.

Cette méthode et celle qui utilise les sprites requièrent des outils de développement pour être maintenables. Cette méthode a l'avantage de ne pas avoir besoin de disposer les images manuellement puisqu'elle les conserve dans des fichiers séparés pendant la phase de développement.

Cependant elle a l'inconvénient d'augmenter la taille de votre HTML/CSS considérablement si vous avez des images volumineuses. Il n'est pas recommendé d'utiliser cette méthode si vous ne gzippez pas votre HTML/CSS pendant les requêtes HTTP puisque le surpoids pourrait contre-balancer la rapidité que vous gagnez en minimisant le nombre de requêtes HTTP.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-data-uri) / [References](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*
