---
order: 25
title: Les styles en haut, les scripts en bas
---

Quand nous ajoutons les feuilles de style dans le `<head>`, nous permettons à la page de s'afficher progressivement, ce qui donne l'impression à nos utilisateurs qu'elle se charge rapidement.

```html
<head>
  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">
</head>
```

Mais si nous les mettons à la fin de la page, la page sera rendue sans style jusqu'à ce que le CSS soit chargé et appliqué.

<div class="img-right">
  <img id="geek-32" class="icos-geek" src="http://browserdiet.com/en/assets/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

En revanche, lorsqu'il s'agit de JavaScript, il est important de placer les scripts au bas de la page parce-qu'ils bloquent le rendu (affichage) pendant leur chargement et exécution.

```html
<body>
  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>
</body>
```

*> [Références](https://github.com/zenorocha/browser-diet/wiki/References#styles-up-top-scripts-down-bottom)*
