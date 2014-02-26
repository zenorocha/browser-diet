---
order: 4
title: Aktivujte chytré kešování
---

Nejlepší způsob, jak optimalizovat requesty z vaší stránky, je nedělat žádné requesty. A jedna z nejužitečnějších cest, jak se vyhnout nepotřebným requestům, je kešování v prohlížeči. Ve výchozím nastavení je ponecháno na prohlížeči, jak dlouho bude soubory kešovat. My ale můžeme nastavit přesnou dobu, po kterou budou soubory uchovány v keši.

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/en/assets/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

Konfigurace se nastavuje na serveru (a závisí na tom, jakou serverovou konfiguraci máte). V případě Apache, pro představu, můžete přidat následující konfiguraci do `.htaccess` souboru:

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

Tyto instrukce kešují obrázky, CSS a JS po 6 měsíců&mdash;je doporučováno kešovat nejméně po dobu jednoho měsíce. Ostatní servery mohou být nastaveny obdobně.

Důležité je zapamatovat si, že jakmile je něco nakešováno, prohlížeč nebude víckrát soubor načítat. Pokud chceme změnit obsah souboru, nemusí se změna projevit tak, jak běžně očekáváme. Abychom zobrazili novou verzi, musíme změnit název souboru. Jedna z cest, jak toho dosáhnout, je přidání určité formy verzování nebo časového razítka do názvu souboru. Například místo `home.js` můžete použít `home-v1.js` a až bude potřeba aktualizace souboru, prostě se změní jméno na `home-v2.js`.

Další způsob, jak obejít kešování v případě potřeby změny souboru je použití GET parametru v URL: `home.js?v=1` a `home.js?v=2`. Tato metoda má ale nevýhody oproti změně názvu souboru. Některé proxy servery ingorují GET parametry, ale zohledňují kešování. V takovém případě pak nebude možné vynutit si znovunačtení obsahu souboru, když je třeba.

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
