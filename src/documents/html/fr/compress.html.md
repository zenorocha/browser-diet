---
order: 24
title: Minifiez votre HTML
---
Pour avoir du code lisible et maintenable il est bon d'écrire des commentaires et d'utiliser l'identation

```html
<p>Lorem ipsum dolor sit amet.</p>

<!-- My List -->
<ul>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</ul>
```
Cependant pour le navigateur cela importe peu. Pour cette raison il peut être utile de minifier son HTML avec des outils génériques.

```html
<p>Lorem ipsum dolor sit amet.</p><ul><li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li></ul>
```
<div class="img-right">
  <img id="htmlcompression-table" src="http://browserdiet.com/img/htmlcompressor-table.jpg" alt="HTML Compression Sample Results">
</div>

L'espace sera économisé en en supprimant les espaces en trop, les commentaires et tous les caractères inutiles sans changer la structure du contenue.

Cela se traduira pour l'utilisateur par un téléchargement, un parsing et une execution plus rapide.

A droite quelques examples de performances d'[HTML Compressor](https://code.google.com/p/htmlcompressor/) avec les réglages par défault default.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-html) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-html)*