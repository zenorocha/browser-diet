---
order: 5
title: Optimisez vos images
---

Les images contiennent beaucoup d'informations inutiles sur internet. Par exemple, une image JPEG peut avoir les metadata *Exif* de la caméra (date, modèle, lieu, etc.). Une image PNG contient l'information des couleurs, des metadata et contient parfois même une image miniature embarquée. Rien de tout ceci n'est utilisé par le navigateur et augmente inutilement la taille du fichier.

Il existe des outils pour l'optimisation des images, qui suppriment toutes données inutiles et vous retournent un fichier plus léger sans dégrader la qualité de l'image. On dit dans ce cas qu'ils opèrent une compression *sans perte*.

Un autre moyen d'optimiser les images est de les compresser au risque de perdre en qualité visuelle. On appelle cela des optimisations *avec pertes*. Quand vous exportez une image JPEG, par exemple, vous pouvez choisir le niveau de qualité (un nombre entre 0 et 100). En pensant à la performance, choisissez toujours le plus petit nombre pour lequel la qualité visuelle est encore acceptable. Une autre technique avec perte commune consiste à réduire la palette des couleurs dans une image PNG ou de convertir les PNG-24 en PNG-8.

Pour améliorer la performance perçue par l'utilisateur, vous devriez aussi convertir tous vos fichiers JPEG en version progressive. Les JPEG progressifs sont très bien supportés dans les navigateurs, sont très simples à créer et n'ont pas de perte significative de qualité. L'avantage est que l'image apparaîtra plus tôt sur la page ([Regardez la démo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#optimize-your-images) / [References](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*