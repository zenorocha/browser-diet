---
order: 28
title: Evite códigos inline
---

Existem duas formas básicas de você lidar com CSS ou JavaScript na sua página.

**1) Inline:** onde o CSS é definido dentro da tag `<style>` e o JavaScript dentro da tag `<script>`

**2) Externo:** onde o CSS é carregado na tag `<link>` e o JavaScript através do atributo `src` da tag `<script>`

A primeira opção, apesar de reduzir o número de requisições, aumenta o tamanho do documento HTML. Ela pode ser interessante quando você tem arquivos pequenos e o custo de uma requisição é maior. Nesse caso, faça testes para avaliar se há realmente ganho. Avalie também o objetivo da página e sua audiência, se o esperado é que usuários visitem essa página somente uma única vez, como por exemplo uma campanha temporária onde não se espera futuras visitas à mesma, utilizar inline ajudará na redução do número de requisições.

*> Evite escrever manualmente o CSS/JS no meio do HTML (prefira alguma ferramenta que automatize este processo).*

Já a segunda opção, não só melhora a organização do seu código, como também possibilita que eles sejam armazenados no cache do navegador. Prefira essa opção para a maior parte dos casos, quando lidamos com arquivos grandes e o custo de colocá-lo inline é maior.

*> Ferramentas úteis: [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*