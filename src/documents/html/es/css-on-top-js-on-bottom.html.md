---
order: 22
title: Los estilos arriba, los scripts al fondo
---

Cuando ponemos hojas de estilo en el `<head>` permitimos a la página mostrarse progresivamente, lo que da la impresión a nuestros usuarios de que la página está cargando rápido.

```html
<head>
  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">
</head>
```

Pero si los ponemos al fondo de la página, la página se renderizará sin estilos hasta que el CSS se descargue y aplique.

<div class="img-right">
   <img id="geek-32" class="icos-geek" src="http://browserdiet.com/en/assets/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

Por otro lado, cuando tratamos con JavaScript, es importante poner los scripts al fondo de la página ya que bloquean el renderizado mientras se están descargando y ejecutando.

```html
<body>
  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>
</body>
```

*> [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#styles-up-top-scripts-down-bottom)*
