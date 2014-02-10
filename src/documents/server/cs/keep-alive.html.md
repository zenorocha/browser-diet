---
order: 5
title: keep-alive
---

Každý HTTP request potřebuje vytvořit "TCP" spojení, aby byla možná komunikace mezi klientem a serverem.

Vytvoření TCP spojení je nákladný a časově náročný proces (z důvodu "trojcestného handshakingu"). Je tedy velmi důležité opakovaně používat již vytvořené TCP spojení pro přenos dalších HTTP požadavků tím samým "tunelem".

Toto nastavení je nazýváno keep-alive.

Konfigurace se liší podle použitého serveru. Například pro Apache můžete doplnit do `htaccess` tyto řádky:

```
<IfModule mod_headers.c>
  Header set Connection keep-alive
</IfModule>
```

*> [Reference](https://github.com/cleberdantas/browser-diet/wiki/References#wiki-keep-alive)*
