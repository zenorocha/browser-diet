---
order: 5
title: keep-alive
---

Chaque requête HTTP établit une connexion "TCP" pour que le client et le serveur puissent communiquer.

Établir une connexion "TCP" est un processus coûteux qui prend du temps (à cause du "three-way handshake") et il est donc très important de demander aux connexions TCP nouvellement créées de faire transiter d'autres requêtes HTTP dans le même "tunnel".

Cette configuration est appellée *keep-alive*.

Elle est spécifique à chaque serveur. Sur Apache, par exemple, vous pouvez ajouter les lignes suivantes dans le `.htaccess` :

```
<IfModule mod_headers.c>
  Header set Connection keep-alive
</IfModule>
```

*> [Références](https://github.com/cleberdantas/browser-diet/wiki/References#wiki-keep-alive)*
