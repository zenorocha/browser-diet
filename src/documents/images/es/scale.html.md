---
order: 6
title: No cambies el tamaño de las imágenes en el HTML
---

Siempre define el atributo `width` y `height` de una imagen. Esto ayudará a evitar *repaints* y *reflows* durante el renderizado.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

Sabiendo esto, Pepe, desarrollador que tiene una imagen de *700x700px* decide usar esta técnica para mostrar la imágen como *50x50px*.

De lo que Pepe no se da cuenta es que se enviarán docenas de *kilobytes* innecesarios.

Siempre ten en mente: sólo porque puedas definir el alto y el ancho de una imágen en HTML, no significa que debas usarlo para reducir el tamaño de imágenes grandes.