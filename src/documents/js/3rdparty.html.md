---
title: Carregue código de terceiros de forma assíncrona
slug: 3rd-party-async-js
order: 89
---

O uso de código de terceiros é muito comum.  
Seja para embedar um video do youtube, colocar um botão de like, ou botão de tweet, estes códigos nos dão funcionalidades relevantes para um site.  
O grande problema destes códigos é que nem sempre eles serão entregues de maneira eficiente, seja pela conexão do usuário, ou pela conexão no servidor onde estão hospedados.    
Isso pode ser o ponto crítico para o carregamento de um site.  

SEMPRE, carregue estes códigos de forma assíncrona.  

```js
var script = document.createElement('script'),
	head = document.getElementsByTagName('head')[0];
script.type = 'text/javascript';
script.async = true;
script.src = url;
head.appendChild(s);
```
