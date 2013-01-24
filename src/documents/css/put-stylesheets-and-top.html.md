---
title: Coloque seus styles no <head>
slug: stylesheets-and-top
order: 1
---

Front-end Engineers que se precupam com performance querem que uma página carregue progressivamente, ou seja, queremos que o navegador exiba seu conteúdo o mais breve possível.

O problema com a colocação de folhas de estilo na parte inferior de seu documento, e que atrapalha no carregamento progressivo, como é o caso do Internet Explorer.

A especificação do HTML e claramente falada que folhas de estilo devem ser incluidos no HEAD de seu documento.

Exemplo de como deve ficar a chamada de sua folha de estilo.

``` HTML
<!doctype html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <title>Use Styles no HEAD de seu documento</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">

</head>
<body>

</body>
</html>
```
