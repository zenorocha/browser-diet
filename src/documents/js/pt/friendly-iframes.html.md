---
title: Use Friendly Iframes para publicidades
slug: friendly-iframes-js
order: 91
---

Ferramentas de advertising, em sua grande maioria, fazem o uso de document.write() para entrega de publicidades.  
Esta prática faz com que o seu site fique na dependência das mesmas, e pode causar problemas críticos de performance.  
Existem 2 possíveis soluções para este problema:  
1 - Concentre todas as chamadas as publicidades no final da sua página.  
Esta prática garante que o seu site será entregue, porém caso alguma publicidade tenha problema de conexão, as chamadas abaixo não funcionarão.  
Outro problema desta abordagem é que o evento "load" do browser não será disparado.  

2 - Friendly-Iframe(recomendado)  
Iframes por padrão não são assíncronos.  
Isto quer dizer que não basta isolar uma chamada dentro de um Iframe, pois o browser espera o carregamento do mesmo.  
Para criar um friendly-iframe:  
- crie um iframe dinamicamente(usando JavaScript)  
- aponte o src para um HTML estático do mesmo domínio  
- dentro do iframe, crie um script dinâmico apontando para a publicidade

Exemplo(JavaScript):  

```js
var iframe = document.createElement('iframe');
iframe.src = 'static.html';
document.getElementById('placeholder').appendChild(iframe);
```

Exemplo(HTML estático):  

```js
var script = document.createElement('script'),
	head = document.getElementsByTagName('head')[0];
script.type = 'text/javascript';
script.async = true;
script.src = url;
head.appendChild(s);
```
