---
order: 1
title: Evite códigos inline
---

Existem duas formas básicas de você lidar com CSS ou JavaScript na sua página.

**1) Inline:** onde o CSS é definido dentro da tag `<style>` e o JavaScript dentro da tag `<script>`

**2) Externo:** onde o CSS é carregado na tag `<link>` e o JavaScript através do atributo `src` da tag `<script>`

A primeira opção, apesar de reduzir o número de requisições, aumenta o tamanho do documento HTML.

Já a segunda opção, não só melhora a organização do seu código, como também possibilita que eles sejam armazenados no cache do navegador.