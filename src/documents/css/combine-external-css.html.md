---
title: Combine CSS externos
slug: combine-external-css
order: 5
---

Como acontece com JavaScript externo, vários arquivos CSS externos prejudica sua aplicação por fazer N requisições HTTP, sendo que combinando-os em menos arquivos, pode se reduzir a latência, assim menas requisições mais rápido sua página web ficará.

Recomendamos o uso de no máximo 3 arquivos CSS, mas o ideal que seja 2 arquivos.

```HTML
<!doctype html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <title>Combine CSS externos</title>

  <!-- MANEIRA CORRETA -->
  <link rel="stylesheet" href="structure_min.css" media="all">
  <link rel="stylesheet" href="design_min.css" media="all">

  <!-- MANEIRA ERRADA -->
  <link rel="stylesheet" href="estructure.css" media="all">
  <link rel="stylesheet" href="banner.css" media="all">
  <link rel="stylesheet" href="layout.css" media="all">

</head>
<body>

</body>
</html>
```

<strong>Recomendações</strong>

1 - Divisão do CSS em 2 arquivos, um contendo o código minimo necessário para processar a página na inicialização, e um arquivo contendo código CSS que não é necessário, até que o carregamento da página foi concluido.

2 - Sirva CSS de um componente raramente utilizado em seu próprio arquivo. Sirva o componente apenas quando for solicitado pelo usuário.

3 - Para CSS que não deve ser armazenado em cache, considere o inline.

4 - Não use CSS @import de um arquivo CSS.