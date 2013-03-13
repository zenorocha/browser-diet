---
order: 26
title: Evita código en línea
---

Hay dos formas básicas de incluir CSS o Javascript en tu página

**1) En línea:** El CSS es definido dentro de una etiqueta `<style` y el JavaScript dentdo de una etiqueta `<script>`.

**2) Externo:** El CSS es cargado desde una etiqueta `<link>` y el Javascript desde el atributo `src` de la etiqueta `<script>`.

La primera opción, pese a que reduce el número de solicitudes HTTP, aumenta el tamaño de tu documento HTML. Pero esto puede ser útil cuando tienes archivos pequeños y el costo de hacer una solicitud es mayor. En este caso, haz tests para evaluar si hay alguna ganancia en velocidad. Asegúrate de evaluar el propósito de tu página y su audiencia: si esperas que la gente sólo visite tu página una vez, por ejemplo en alguna campaña temporal donde nunca esperas visitantes de vuelta, poner código en línea ayudará a reducir el número de solicitudes HTTP.

*> Evita escribir manualmente CSS o JS en el medio de tu HTML (es preferible automatizar este proceso con herramientas).*

La segunda opción nó solo mejora la organización de tu código, sino que también hace posible al navegador cachearlo. Esta opción suele ser la mejor en la mayoría de los casos, sobre todo cuando estás trabajando con archivos grandes y el costo de poner los archivos en línea es mayor.

*> Herramientas útiles: [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*
