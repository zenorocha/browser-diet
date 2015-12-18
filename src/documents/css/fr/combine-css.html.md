---
order: 19
title: Combiner plusieurs fichiers CSS
---

Une autre bonne pratique pour l'organisation et la maintenance des styles est de les séparer en composants modulaires.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="https://browserdiet.com/en/assets/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

Cependant, une requête HTTP est nécessaire pour chacun de ces fichiers (et nous savons que les navigateurs ne peuvent télécharger qu'un nombre limité de ressources en parallèle).

```html
<link rel="stylesheet" href="main.css" media="all">
```

Combinez donc vos CSS. Avoir moins de fichiers produira moins de requêtes et un temps de chargement de page plus rapide.

Vous voulez avoir le meilleur des deux mondes ? Automatisez ce processus à travers un outil de build.

*> [Outils](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [Références](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
