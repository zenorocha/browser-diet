---
order: 26
title: Evita código en línea/incrustado
---

Hay tres formas básicas de incluir CSS o Javascript en tu página

**1) En línea:** El css es definido dentro de un atributo `style`, y el JavaScript en un atributo `onclick` por ejemplo, en cualquier etiqueta HTML.

**2) Incrustado:** El CSS es definido dentro de una etiqueta `<style>` y el JavaScript dentro de una etiqueta `<script>`.

**3) Externo:** El CSS es cargado desde una etiqueta `<link>` y el Javascript desde el atributo `src` de la etiqueta `<script>`.

Las dos primeras opciones, pese a que reducen el número de solicitudes HTTP, aumentan el tamaño de tu documento HTML. Pero esto puede ser útil cuando tienes archivos pequeños y el costo de hacer una solicitud es mayor. En este caso, haz tests para evaluar si hay alguna ganancia en velocidad. Asegúrate de evaluar el propósito de tu página y su audiencia: si esperas que la gente sólo visite tu página una vez, por ejemplo en alguna campaña temporal donde nunca esperas visitantes de vuelta, poner código en línea o incrustado ayudará a reducir el número de solicitudes HTTP.


*> Evita escribir manualmente CSS o JS en el medio de tu HTML (es preferible automatizar este proceso con herramientas).*

La tercera opción nó solo mejora la organización de tu código, sino que también hace posible al navegador cachearlo. Esta opción suele ser la mejor en la mayoría de los casos, sobre todo cuando estás trabajando con archivos grandes y una gran cantidad de páginas.

*> Herramientas útiles: [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*