---
title: Nunca use @import
slug: nunca-use-import
order: 2
---

Há duas maneiras de incluir uma folha de estilho em sua página web. Você pode usar a tag `<link>` ou `@import.

Após vários testes feito pelo Google, Yahoo e Steve Sounders, ficou bem claro que a maneira mais correta de se chamar um style na sua página e pelo modo `<link>`.

Os motivos são que assim você permite o carregamento progressivo dos arquivos como mostrado na dica acima. E que no IE o `@import` se comporta como se você tivesse usando o `<link>` na parte inferior da página, por isso o melhor e não usar `@import`.

```HTML
<!doctype html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <title>Nunca use @import</title>

  <!-- TAG LINK / CORRETO DE SE USAR-->
  <link rel="stylesheet" href="style.css" media="all">

  <!-- TAG @IMPORT / MANEIRA ERRADA DE SE USAR -->
  <style>
    @import url('style.css');
  </style>

</head>
<body>

</body>
</html>
```

