---
ignored: true
order: 21
title: No uses el selector universal
---

Evita usar el selector universal ya que fuerza al navegador a buscar sobre **todos** los elementos de la página, y después aplicar la regla a cada uno.

<div class="img-right">
  <img src="http://browserdiet.com/img/4.png" alt="Geek #4" class="icos-geek" width="162" height="275" />
</div>

```CSS
* {
  margin: 0;
  padding: 0;
  border: none;
  text-decoration: none;
  outline: 0;
}
```

Además, habrá una gran cantidad de elementos sobre los que ciertos atributos no tendrán efecto ninguno.

Por esto, recomendamos que uses un reset, o crees uno propio.

*> Herramientas útiles: [Yahoo! Reset](http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css), [Normalize](http://necolas.github.com/normalize.css/) and [Eric Meyer's Reset](http://meyerweb.com/eric/tools/css/reset/).*
