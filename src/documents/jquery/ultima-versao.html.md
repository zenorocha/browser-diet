---
title: Sempre utilizar a última versão do jQuery
slug: jquery-ultima-versao
order: 2
---

Os membros do core do jQuery estão sempre buscando trazer novidades para a biblioteca, estes ajustes muitas vezes, estão relacionados a otimização de algoritmos, novas funcionalidades e melhorias da legibilidade do código. Para descobrir quais foram as modificações realizadas na última versão do jQuery, você deve ficar ligado no blog do projeto:

http://blog.jquery.com/

Devemos evitar referências para o estático da última versão do jQuery, pois isso poderá fazer com que alguns scripts de seu projeto não funcionem corretamente, após a atualização automática do jquery-latest.js.

```html
<script src="http://code.jquery.com/jquery-latest.js"></script>
```

Para descobrir a versão atualmente utilizada do jQuery, execute no console:
```js
jQuery.fn.jquery
```

Ter o hábito de fazer testes automatizados fará com que você tenha uma atualização de jQuery bem mais tranquila, com relação a erros.