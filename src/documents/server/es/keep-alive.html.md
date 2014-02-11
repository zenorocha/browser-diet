---
order: 5
title: keep-alive
---

Toda solicitud HTTP requiere el establecimiento de una conexión "TCP" para que haya comunicación entre el cliente y el servidor.

Establecer una conexión TCP es un proceso costoso en tiempo y recursos, debido al proceso de negociación en tres pasos ("three-way handshake"), por eso es muy importante que reaprovechemos las conexiones TCP recién creadas para que otras solicitudes HTTP "usen el mismo túnel".

Esta opción se llama keep-alive.

La configuración es específica dependiendo del servidor. En Apache, por ejemplo, puedes editar el archivo `htaccess` con estas líneas:

```
<IfModule mod_headers.c>
  Header set Connection keep-alive
</IfModule>
```

*> [Referencias](https://github.com/cleberdantas/browser-diet/wiki/References#wiki-keep-alive)*
