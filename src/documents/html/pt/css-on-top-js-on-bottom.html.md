---
order: 25
title: Estilos no topo, Scripts no rodapé
---

Quando colocamos as folhas de estilo no `<head>` permitimos que a página renderize progressivamente, o que causa uma percepção ao usuário de que está carregando mais rápido.

Enquanto que se colocássemos próximo ao fim da página, ela seria renderizada sem estilo algum até que o download do CSS terminasse.

Com relação ao JavaScript, é importante manter a chamada dos scripts no fim do página, já que eles bloqueiam a renderização da página enquanto são carregados e executados.

<div class="img-right">
  <img id="geek-32" class="icos-geek" src="http://browserdiet.com/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

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