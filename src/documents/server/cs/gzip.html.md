---
order: 3
title: GZIP
---

Velké procento obsahu stránky je prostý text (HTML, CSS, JavaScript, JSON, XML, atd.). Pro tento typ obsahu je dobré zapnout GZIP kompresi na úrovni severu.

GZIP komprimuje data na serveru před tím, než jsou odeslána do uživatelova prohlížeče, který je za běhu dekóduje zpět. Je to stejný postup, jako zazipovat soubor před tím, než jej někomu odešlete takto zmenšený. Všechny moderní prohlížeče a servery podporují kompresi GZIP.

Konfigurace se nastavuje na serveru. V případě Apache, pro představu, můžete upravit `.htaccess` soubor a zapnout tak GZIP pro typy souborů, které chcete komprimovat:

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

Všechny populární servery jsou obdobně snadno nastavitelné (v dokumentaci si dohledejte informace pro ten svůj!). Toto je jeden z nejefektivnějších tipů pro vylepšení výkonu stránek.

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#gzip)*
