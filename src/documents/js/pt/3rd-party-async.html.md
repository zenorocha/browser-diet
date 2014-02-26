---
order: 18
title: Carregue código de terceiros de forma assíncrona
---

Quem nunca carregou um código de terceiros para embedar um vídeo do YouTube ou colocar um botão de like/tweet?

O grande problema é que nem sempre esses códigos são entregues de maneira eficiente, seja pela conexão do usuário, ou pela conexão no servidor onde estão hospedados. Ou esse serviço pode estar temporariamente fora do ar ou mesmo ser bloqueado pelo firewall do usuário ou da empresa dele.

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="http://browserdiet.com/en/assets/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

Para evitar que isso se torne um ponto crítico no carregamento de um site ou, pior, trave o carregamento da página toda, sempre carregue estes códigos de forma assíncrona (ou então use *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Se você quiser carregar múltiplos widgets de terceiros de forma assíncrona use [esse script](https://gist.github.com/zenorocha/5161860).

*> [Vídeo](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*
