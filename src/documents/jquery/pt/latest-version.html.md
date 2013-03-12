---
order: 13
title: Use sempre a última versão do jQuery
---

Os membros do core do jQuery estão sempre buscando trazer novidades para a biblioteca, estes ajustes muitas vezes, estão relacionados a melhorias da legibilidade do código, novas funcionalidades e principalmente otimização de algoritmos.

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

Por isso, use sempre a última versão do jQuery que está sempre disponível aqui, caso você queira copiar para um arquivo local:

```html
http://code.jquery.com/jquery-latest.js
```

Mas _nunca_ referencie aquela URL na sua tag `<script>`, isso pode criar problemas no futuro já que novas versões são automaticamente servidas no seu site antes mesmo de você ter a chance de testá-las. Em vez disso, use a última versão específica do jQuery que você precisa.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

Já dizia o sábio [Barney Stinson](/img/new-is-always-better.gif): *"New is always better"* :P
