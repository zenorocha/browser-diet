---
order: 12
title: Usa siempre la última versión de jQuery
---

El equipo de jQuery siempre está buscando mejorar la librería, mediante mejor legibilidad del código, nuevas funcionalidades, y optimización de algoritmos existentes.

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/en/assets/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

Por eso, usa siempre la última versión, que siempre se encuentra aquí, si quieres copiarla en un archivo local:

```html
http://code.jquery.com/jquery-latest.js
```

Pero _nunca_ uses esa url en una etiqueta `<script>`, puede crear problemas en el futuro ya que nuevas versiones son automáticamente servidas a tu sitio antes de que puedas testarlas. En vez de eso, usa la última versión de jQuery que necesites específicamente.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

Como el sabio [Barney Stinson](/img/new-is-always-better.gif) dice, *"Lo nuevo es siempre mejor"* :P

*> [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#always-use-the-latest-version-of-jquery)*
