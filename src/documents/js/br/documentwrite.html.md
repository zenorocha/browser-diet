---
title: Evite document.write
slug: evite-document.write-js
order: 90
---

O uso do document.write() faz com que a página fique na dependência do seu retorno para ser completamente carregada.  
Esta (má)prática já foi abolida há anos pelos desenvolvedores, mas ainda existem casos onde o uso do document.write() é amplamente utilizado.  
Em poucos casos o uso deste método é aplicado.  
Um exemplo comum do uso do document.write é no fallback síncrono de algum arquivo JavaScript.  
O [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/) faz o uso desta técnica para carregar o jQuery local, caso a CDN do Google não responda, ou caso não exista conexão com a Internet.  
Veja abaixo:
```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
Para todas outras situações, evite o uso do document.write().  

Ferramentas de advertising utilizam esta prática para entrega de publicidades, e isso pode ser o ponto crítico para o carregamento de um site.  


```js
  document.write("<script src='ad.js'><\/script>");
```