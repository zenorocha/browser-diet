---
order: 3
title: GZIP
---

Un large pourcentage du contenu d'un site est simplement du texte (HTML, CSS, JavaScript, JSON, XML, etc.). Pour ce type de contenu, c'est une bonne pratique d'activer la compression GZIP au niveau du serveur.

GZIP compresse les données sur le serveur avant de l'envoyer via le réseau au navigateur de l'utilisateur, qui le décompresse à la volée. C'est comme compresser un fichier avant de l'envoyer à quelqu'un pour le rendre plus petit. Tous les navigateurs et les serveurs modernes supportent GZIP.

La configuration est mise en place sur le serveur. Sur Apache, par exemple, vous pouvez éditer le fichier `.htaccess` et activer GZIP pour les types de fichiers que vous souhaitez :

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

Les serveurs les populaires permettent une mise en place assez simple (consultez la documentation pour le votre !) et c'est l'un des conseils les plus efficaces pour améliorer les performances d'une page.

*> [Références](https://github.com/zenorocha/browser-diet/wiki/References#gzip)*