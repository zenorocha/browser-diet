---
order: 12
title: Toujours utiliser la dernière version de jQuery
---

L'équipe en charge du noyau de jQuery cherche constamment à améliorer la performance de la librairie, en utilisant du code plus lisible, de nouvelles fonctionnalités et en optimisant les algorithmes existants.

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

Pour cette raison, utilisez toujours la dernière version de jQuery, elle est toujours disponible ici si vous voulez la copier localement :

```html
http://code.jquery.com/jquery-latest.js
```

Mais ne déclarez _jamais_ cette URL dans une balise `<script>`, cela vous posera des problèmes dans le futur car la dernière version se retrouvera sur votre site dès qu'elle sortira, avant même que vous n'ayez pu la tester. Mettez donc plutôt un lien vers la dernière version spécifique de jQuery dont vous avez besoin.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

Comme le sage [Barney Stinson](/img/new-is-always-better.gif) le dit, *"Le nouveau, c'est toujours mieux"* :P

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#always-use-the-latest-version-of-jquery)*