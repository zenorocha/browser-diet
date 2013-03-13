---
order: 3
title: GZIP
---

Un gran porcentaje del contenido de un sitio es simple texto (HTML, CSS, JavaScript, JSON, XML, etc.). Para este tipo de contenido, es una buena práctica activar la compresión GZIP en el servidor.

GZIP comprime datos en el servidor antes de enviarlos al navegador del usuario, que lo decodifica. Es como comprimir un archivo antes de enviarlo para hacerlo más pequeño. Todos los navegadores y servidores modernos soportan GZIP.

La configuración se encuentra en el servidor. En apache, por ejemplo, puedes editar el archivo `.htaccess` y activar la compresión GZIP para los tipos de archivo que quieras:

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

Todos los servidores populares son igual de fáciles de configurar (consulta la documentación para el tuyo!) y es uno de los trucos más efectivos para mejorar el rendimiento de la página.