---
order: 5
title: Optimisez vos images
---

Les fichiers images contiennent beaucoup d'information qui sont inutiles sur internet. Par exemple, une image JPEG peut avoir *Exif* metadata de la caméra (date, modèle, lieux, etc...). Une image PNG contient l'information des coleurs, du metadata et parfois même une image miniature embarquée. Rien de cela n'est utilisé par le navigateur et augmente la taille du fichier.

Il y a des outils pour l'optimisation des images, qui suppriment toutes données inutiles et vous donne un fichier plus léger sans dégrader la qualité de l'image. On dit dans ce cas qu'il opère une compression *lossless*.

Un autre moyen d'optimiser les images est de les compresser sous peine de perdre de la qualité. On appelle cela des *optimisations* lossy. Quand vous exportez une image JPEG, par exemple, vous pouvez choisir le niveau de qualité (un nombre entre 0 et 100). En pensant à la performance, choisissez toujours le plus petit nombre pour lequel la qualité visuelle est encore acceptable. Une autre technique lossy est de réduire la palette des couleurs dans une image PNG ou de convertir une PNG-24 en PNG-8.

Pour améliorer la performance perçue par l'utilisateur, vous devriez aussi convertir tous vos fichiers JPEG en version progressives. Les JPEG progressifs sont très bien supportés dans les navigateurs, sont très simples à créer et n'ont pas de perte importante de qualité. L'avantage est que l'image apparaitra plus tôt sur la page ([Regarder la démo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#optimize-your-images) / [References](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*