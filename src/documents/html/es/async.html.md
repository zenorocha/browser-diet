---
order: 23
title: Prueba async y defer
---

Para explicar cómo estos atributos son útiles para el rendimiento, es mejor entender qué pasa cuando no los usamos.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="http://browserdiet.com/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

De esta forma, la página tiene que esperar a que el script sea descargado, analizado y ejecutado completamente antes de poder seguir mostrando el HTML. Esto puede incrementar significativamente el tiempo de carga de tu página. A veces este comportamiento puede ser el deseado, pero no suele ser el caso.

``` html
<script async src="example.js"></script>
```

El script es descargado asíncronamente mientras el resto de la página sigue siendo analizada. El script se ejecutará en cuanto se acabe de descargar.

``` html
<script defer src="example.js"></script>
```

Al igual que en el ejemplo anterior, el script es descargado asíncronamente. Pero es ejecutado sólo cuando la página haya sido completamente cargada.
