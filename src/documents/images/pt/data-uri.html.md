---
order: 7
title: Data URI
---

Essa técnica é uma alternativa para o uso de CSS sprites.

[Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme) é uma maneira de adicionar conteúdo inline de uma URI que você normalmente iria apontar. Nesse exemplo, nós estamos utilizando para adicionar conteúdo inline no background de uma imagem no CSS, a fim de reduzir o número de requisições HTTP necessárias para carregar uma página.

Antes:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

Depois:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

Todos os navegadores do IE8 para cima suportam essa técnica de codificação base64.

Ambos esse método e CSS sprites precisam de ferramentas de build para serem de fácil manutenção. Esse método tem a vantagem de não exigir reposicionamento manual do sprite já que mantém suas imagens em arquivos individuais durante o desenvolvimento.

Entretanto tem a desvantagem de aumentar consideravelmente o tamanho do seu HTML/CSS se você possuir imagens grandes. Não é recomendado utilizar esse método se você não está utilizando a técnica de gzip no seu HTML/CSS durante as requisições HTTP já que a sobrecarga de tamanho pode anular os ganhos de velocidade sobre minimizar o número de requisições HTTP.

*> Ferramentas úteis: [mod_pagespeed](https://developers.google.com/speed/docs/mod_pagespeed/filter-image-optimize), [data: URI Generator](http://dopiaza.org/tools/datauri/index.php) e [data-uri.js](https://github.com/heldr/datauri).*