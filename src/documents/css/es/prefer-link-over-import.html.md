---
order: 20
title: Usa <link> antes que @import
---

Hay dos formas de incluir hojas de estilo externas en tu página: mediante la etiqueta `<link>`:

```html
<link rel="stylesheet" href="style.css">
```

O mediante la directiva `@import` (dentro de una hoja de estilos externa o una etiqueta `<style>`):

```css
@import url('style.css');
```

Cuando usas la segunda opción dentro de una hoja de estilos externa, el navegador no es capaz de descargar el archivo en paralelo, lo que puede bloquear la descarga de otros archivos.