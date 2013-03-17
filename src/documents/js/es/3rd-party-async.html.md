---
order: 18
title: Carga contenido de terceros asíncronamente
---

¿Quién nunca ha cargado contenido de terceros para incrustar un video de YouTube o un botón de like/tweet?

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="http://browserdiet.com/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

El gran problema es que esos códigos no son siempre distribuidos eficientemente, ya sea por la conexión del usuairo, o la conexión del servidor donde se alojan. O este servido puede estar caído temporalmente o incluso estar bloqueado por el firewall del usuario o su compañía.

Para evitar que esto se convierta en un problema crítico, o peor, bloquee la carga de la página completamente, siempre carga estos códigos asíncronamente (o usa *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Alternativamente, si quieres cargar varios widgets de terceros, puedes cargarlos asíncronamente con [este script](https://gist.github.com/zenorocha/5161860).

*> Más información sobre [cargar los botones sociales asíncronamente](http://www.phpied.com/social-button-bffs/)*

*> Video: [comparación de una página normal vs una página donde se carga un contenido de terceros inaccessible](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d).*