---
order: 4
title: Activer le cache intelligent
---

La meilleure façon d'optimiser les requêtes faites à partir de votre page est de ne pas en faire, évidemment. Et l'un des moyens les plus efficaces pour éviter les requêtes inutiles, c'est de laisser le navigateur mettre en cache le contenu des pages. Par défaut, le navigateur décide combien de temps il doit garder en cache les fichiers. Mais nous pouvons contrôler le temps exact de conservation du fichier dans le cache.

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/en/assets/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

Ce type de configuration est effectuée sur le serveur (et dépendra de la configuration du serveur que vous utilisez). Avec Apache, par exemple, vous pouvez ajouter la configuration suivante dans un fichier `.htaccess`:

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

Ces instructions mettent en cache les images, CSS et JS pendant 6 mois&mdash;il est recommandé de les mettre en cache pendant au moins un mois. D'autres serveurs peuvent être configurés de façon similaire.

Une chose importante à retenir est que, une fois mis en cache, le navigateur ne va pas demander à nouveau un fichier. Si nous devons changer le contenu du fichier, l'affichage obtenu ne sera pas le résultat attendu. Pour envoyer une nouvelle version, nous avons besoin de changer le nom du fichier. Une façon de faire est d'ajouter une certaine forme de versioning ou un horodatage au nom du fichier. Par exemple, au lieu de `home.js` vous pouvez utiliser `home-v1.js` et quand vous avez besoin de mettre à jour le fichier, changer le nom de `home-v2.js`, etc.

Une autre forme courante de rupture de cache est d'utiliser un paramètre GET dans l'URL : `home.js?v=1` et `home.js?v=2`. Cette méthode a l'inconvénient par rapport au renommage de fichiers d'être ignorée par certains proxys sur internet (ils ne prennent pas en compte les paramètres GET) mais respecte les règles de cache, ce qui rend impossible la maîtrise de celui-ci (mettre à jour un fichier quand on a besoin).

*> [Références](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
