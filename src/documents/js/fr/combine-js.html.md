---
order: 11
title: Combinez plusieurs fichiers JS en un seul
---

Une autre bonne méthode pour l'organisation et la maintenance de scripts est de les séparer en composants modulaires.

<div class="img-right">
<img id="geek-47" class="icos-geek" src="https://browserdiet.com/en/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

Cependant, une requête HTTP est nécessaire pour chacun de ces fichiers (et nous savons que les navigateurs ne peuvent télécharger qu'un nombre limité de ressources en parallèle).

```html
<script src="main.js"></script>
```

Vous devriez donc combiner votre JS. Avoir un nombre plus petit de fichiers entrainera un nombre de requêtes inférieure et une exécution plus rapide.

Vous voulez avoir le meilleur des deux mondes ? Automatisez ce processus avec un outil de build.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combine-multiple-js-files-into-one) / [References](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
