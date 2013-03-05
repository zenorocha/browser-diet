---
order: 1
title: Carregue código de terceiros de forma assíncrona
---

Quem nunca carregou um código de terceiros para embedar um vídeo do YouTube ou colocar um botão de like/tweet?

O grande problema é que nem sempre esses códigos são entregues de maneira eficiente, seja pela conexão do usuário, ou pela conexão no servidor onde estão hospedados. Ou esse serviço pode estar temporariamente fora do ar ou mesmo ser bloqueado pelo firewall do usuário ou da empresa dele.

Para evitar que isso se torne um ponto crítico no carregamento de um site ou, pior, trave o carregamento da página toda, sempre carregue estes códigos de forma assíncrona (ou então use *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    head = document.getElementsByTagName('head')[0];
script.type = 'text/javascript';
script.async = true;
script.src = url;
document.head.appendChild(s);
```
