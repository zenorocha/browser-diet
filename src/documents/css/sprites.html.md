---
title: Use Sprites CSS
slug: sprites-css
order: 3
---

O uso de CSS Sprites é uma tecnica muita importante para sua aplicação, o uso dela pode lhe compensar em milhares de dolares em servidor, pois consiguirá diminuir absurdamente requests HTTP e evitar atrasos de downloads de outros recursos em sua página.

<strong>Recomendações</strong>

1 - Combine imagens que são carregadas na mesma página e que são carregadas sempre em conjunto. Por exemplo, um conjunto de icones que são carregados em cada página deve ser sprite. Imagens dinâmicas que mudam a cada exibição, ou que são mudadas frequentemente não são boas candidatas para usar sprites.

2 - Use Caching em imagens que tem vida longa, caching significa que a imagem não terá de ser re-forçado novamente, uma vez que é armazenada em caching pelo navegador. Assim evitando mais um requisição HTTP.

3 - Use o [SpriteMe](http://spriteme.org/) para tornar mais fácil a criação de seus sprites CSS.
