---
order: 21
title: Prueba async
---

Para explicar cómo este atributo es útil para el rendimiento, es mejor entender qué pasa cuando no lo usamos.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="https://browserdiet.com/assets/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

De esta forma, la página tiene que esperar a que el script sea descargado, analizado y ejecutado completamente antes de poder seguir mostrando el HTML. Esto puede incrementar significativamente el tiempo de carga de tu página. A veces este comportamiento puede ser el deseado, pero no suele ser el caso.

``` html
<script async src="example.js"></script>
```

El script es descargado asíncronamente mientras el resto de la página sigue siendo analizada. El script se ejecutará en cuanto se acabe de descargar. Tenga en cuenta que varios scripts asincrónicos se ejecutará sin un orden específico.

*> [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#try-out-async)*
