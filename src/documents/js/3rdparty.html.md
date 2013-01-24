---
title: Carregue código de terceiros de forma assíncrona
slug:  3rd-party-async-js
order: 14
---

Ferramentas de advertising, em sua grande maioria, fazem o uso de document.write() para entrega de publicidades.  
Isso pode ser o ponto crítico para o carregamento de um site.  
Estes trechos de código JavaScript, responsáveis por criar publicidades em uma página, ficam hospedados em servidores espalhados pelo mundo.  
Seja por falha na rede, lentidão nos servidores, ou qualquer outro motivo, uma página que faz o uso destes códigos, está propensa a falha.  

SEMPRE, carregue estes códigos de forma assíncrona.  

```js
var script = document.createElement('script'),
	head = document.getElementsByTagName('head')[0];
script.type = 'text/javascript';
script.async = true;
script.src = url;
head.appendChild(s);
```

Especificamente sobre publicidades, esta abordagem nem sempre é possível.  
