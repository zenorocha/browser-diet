---
order: 25
title: Los estilos arriba, los scripts al fondo
---

Cuando ponemos hojas de estilo en el `<head>` permitimos a la página mostrarse progresivamente, lo que da la impresión a nuestros usuarios de que la página está cargando rápido.

Pero si los ponemos al fondo de la página, la página se renderizará sin estilos hasta que el CSS se descargue y aplique.

Por otro lado, cuando tratamos con JavaScript, es importante poner los scripts al fondo de la página ya que bloquean el renderizado mientras se están descargando y ejecutando.

```html
<!doctype html>
<html>
<head>

  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">

</head>
<body>

  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>

</body>
</html>
```