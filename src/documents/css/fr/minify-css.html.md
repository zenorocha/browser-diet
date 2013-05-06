---
order: 22
title: Minifier vos feuilles de styles
---

Pour maintenir un code lisible, une bonne idée est d'écrire des commentaires et d'utiliser l'indentation:

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Structure --- */

.intro {
  margin: 100px;
  position: relative;
}
```

But to the browser, none of this actually matters. For this reason, always remember to minify your CSS through automated tools.

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```
Cela va diminuer la taille des fichiers, ce qui se traduit par un temps de chargement, d'analyse et d'exécution plus rapide.

Pour ceux qui utilisent les préprocesseurs comme [Sass](http://sass-lang.com/), [Less](http://lesscss.org/), et [Stylus](http://learnboost.github.com/stylus/), il est possible de configurer la sortie de votre CSS compilé afin qu'il soit minifié.

*> [Outils](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-stylesheets) / [Références](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-stylesheets)*