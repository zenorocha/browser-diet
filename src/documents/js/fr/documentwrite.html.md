---
order: 16
title: Evitez document.write
---

L'utilisation de `document.write` oblige la page à être chargée intégralement pour qu'il soit éxecuté.

Cette (mauvaise) pratique a été abandonnée depuis des années par les développeurs, mais il y a encore des cas où sont utilisation est toujours obligatoire, comme un plan B pour le chargement asynchrone de fichiers JavaScript.

[HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/), par exemple, utilise cette technique pour charger jQuery localement si le *CDN* de Google ne répond pas.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```

**> Attention:** *L'invocation de `document.write` pendant ou après l'évènement `window.onload` remplace l'intégralité du contenu de la page.*

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```

Le résultat de la page finale sera seulement *bar* et non *foobar* comme on peut s'y attendre. La même chose se produit quand ceci est exécuté après l'évènement `window.onload`.

```html
<span>foo</span>
<script>
  setTimeout(function() {
    document.write('<span>bar</span>');
  }, 1000);
  window.onload = function() {
  // ...
};
</script>
```

Le résultat sera le même que celui de l'exemple précédent si la fonction planifiée par 'setTimeout' est exécutée après l'évènement `window.onload`.

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#avoid-documentwrite)*