---
order: 17
title: Carregue código de terceiros de forma assíncrona
---

Quem nunca carregou um código de terceiros para embedar um vídeo do YouTube ou colocar um botão de like/tweet?

O grande problema é que nem sempre esses códigos são entregues de maneira eficiente, seja pela conexão do usuário, ou pela conexão no servidor onde estão hospedados. Ou esse serviço pode estar temporariamente fora do ar ou mesmo ser bloqueado pelo firewall do usuário ou da empresa dele.

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="https://browserdiet.com/assets/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

Para evitar que isso se torne um ponto crítico no carregamento de um site ou, pior, trave o carregamento da página toda, sempre carregue estes códigos de forma assíncrona adicionando o atributo [async](https://www.caniuse.com/#feat=script-async) na tag script:
```js
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" async></script>
```
