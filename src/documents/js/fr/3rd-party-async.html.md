---
order: 18
title: Charger les librairies tiers de façon asynchrone
---

Qui n'a jamais chargé du contenu extérieur pour incorporer une vidéo Youtube ou un bouton like/tweet?

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="http://browserdiet.com/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

Le gros problème est que ce code n'est pas tout le temps chargé de façon optimale, soit à cause de la connexion de l'utilisateur, soit à cause de la connexion au serveur. Le service pourrait aussi être indisponible temporairement, ou même bloqué par le firewall d'une entreprise.

Pour éviter que cela devienne un problème critique quand le site se charge ou pire, que la page se bloque, il est préférable de toujours charger ce script de façon asynchrone (ou d'utiliser des *[iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
scripts = document.getElementsByTagName('script')[0];

script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Si vous souhaitez charger plusieurs widgets, vous pouvez les télécharger de façon asynchrone en utilisant [ce script](https://gist.github.com/zenorocha/5161860).

*> [Video](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [References](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*