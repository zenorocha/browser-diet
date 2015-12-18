---
order: 21
title: Essayez async
---

Pour expliquer pourquoi cet attribut est utile pour de meilleurs performances, il vaut mieux comprendre ce qui se passe lorsqu'on ne l'utilise pas.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="https://browserdiet.com/en/assets/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

Dans ce formulaire, la page doit attendre que le script soit complètement téléchargé, parsé et exécuté avant de parser et afficher n'importe quel HTML à la suite. Cela peut augmenter le temps de chargement de vore page de manière siginificative. Parfois ce comportement peut être désiré, mais ce n'est généralement pas le cas.

``` html
<script async src="example.js"></script>
```

Ce script est téléchargé de manière asynchrone pendant que le reste de la page continue d'être analysé.
Le script a l'assurance de s'exécuter dès que son téléchargement sera terminé. Gardez à l'esprit que de multiples téléchargements asynchrones ne seront pas exécutés dans un ordre spécifique.

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#try-out-async)*
