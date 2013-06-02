---
order: 24
title: Minifiez votre HTML
---

Pour avoir du code lisible et maintenable il est bon d'écrire des commentaires et d'utiliser l'identation.

```html
<p>Lorem ipsum dolor sit amet.</p>

<!-- My List -->
<ul>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</ul>
```

Mais tout ceci n'a aucun intérêt pour le navigateur. C'est pour cela qu'il faut toujours vous rappeler de minimifier votre HTML par des outils automatiques.

```html
<p>Lorem ipsum dolor sit amet.</p><ul><li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li></ul>
```
<div class="img-right">
  <img id="htmlcompression-table" src="http://browserdiet.com/img/htmlcompressor-table.jpg" alt="HTML Compression Sample Results">
</div>

L'espace sera économisé en supprimant les espaces en trop, les commentaires et tous les caractères inutiles sans changer la structure du contenu.

Cela se traduira pour l'utilisateur par un téléchargement, un parsing et une exécution plus rapide.

A droite vous pouvez voir quelques exemples de performance d'[HTML Compressor](https://code.google.com/p/htmlcompressor/) avec les réglages par défaut.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-html) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-html)*