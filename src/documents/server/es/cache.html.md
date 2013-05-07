---
order: 4
title: Activa una caché inteligente
---

La mejor forma de optimizar solicitudes hechas desde tu página es no hacer solicitudes, obviamente. Y una de las formas más útiles de evitar solicitudes innecesarias es dejar al navegador cachear archivos. Por defecto, el navegador tiene el poder de decidir cúanto tarda en cachear archivos, pero podemos controlar el tiempo exacto que un archivo será mantenido en la caché.

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

Este tipo de configuración se hace en el servidor, y dependerá de qué tipo de servidor tengas. Con Apache, por ejemplo, puedes añadir la siguiente configuración el un archivo `.htaccess`:

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

Estas instrucciones cachean las imágenes, CSS y JS durante 6 meses&mdash;es recomendado cachearlas durante al menos un mes. Otros servidores pueden ser configurados de manera similar.

Una cosa importante para recordar es que una vez cacheado, el navegador no solicitará un archivo nuevo otra vez. Si necesitamos cambiar el contenido del archivo, no funcionará tal y como esperamos, para enviar una nueva versión, necesitamos cambiar el nombre del archivo. Una forma de hacerlo es añadir alguna tipo de versión o fecha al archivo. Por ejemplo, en vez de `home.js` puedes usar `home-v1.js`, y cuando necesitas actualizar el archivo, cambiar el nombre a `home-v2.js`, etc.

Otra forma común de saltarse la caché es usar un parámetro GET en la URL: `home.js?v=1` y `home.js?v=2`. Éste método tiene l a desventaja de que algunos proxies ignoran los parámetros GET, lo que añadido a las reglas de caché, te hace incapaz de eliminar la caché en ellos cuando lo necesitas.

*> [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
