---
order: 14
title: Minifiez votre JavaScript
---

Tout comme en CSS, pour obtenir du code lisible, c'est une bonne idée d'écrire des commentaires et d'utiliser de l'indentation:

```js
BrowserDiet.app = function() {
var foo = true;
return {
bar: function() {
// faire quelque chose
}
};
};
```

Mais pour le navigateur, rien de cela n'a d'importance. Pour cette raison, il faut toujours se rappeler de minifier votre JavaScript avec des outils automatisés.

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

Cela réduira la taille de votre fichier, ce qui accélérera le téléchargement, le traitement et l'exécution de votre page.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-script) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-script)*