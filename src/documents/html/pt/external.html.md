---
order: 1
title: Evite códigos inline
---

Existem duas formas básicas de você lidar com CSS ou JavaScript na sua página.

**1) Inline:** onde o CSS é definido dentro da tag `<style>` e o JavaScript dentro da tag `<script>`

**2) Externo:** onde o CSS é carregado na tag `<link>` e o JavaScript através do atributo `src` da tag `<script>`

A primeira opção, apesar de reduzir o número de requisições, aumenta o tamanho do documento HTML. Ela pode ser interessante quando você tem arquivos pequenos e o custo de uma requisição é maior. Nesse caso, faça testes para avaliar se há realmente ganho e evite escrever o CSS/JS no meio do HTML (prefira alguma ferramenta que faça o inline pra você). 

Já a segunda opção, não só melhora a organização do seu código, como também possibilita que eles sejam armazenados no cache do navegador. Prefira essa opção para a maior parte dos casos, quando lidamos com arquivos grandes e o custo de colocá-lo inline é maior.
