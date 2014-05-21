---
order: 23
title: Evite código inline/incorporado
---

Existem três formas básicas de você lidar com CSS e Javascript:

**1) Inline:** onde o CSS é definido dentro do atributo `style` e o JavaScript dentro de um atributo `onclick` por exemplo, em qualquer tag HTML;

**2) Incorporado:** onde o CSS é definido dentro da tag `<style>` e o JavaScript dentro da tag `<script>`;

**3) Externo:** onde o CSS é carregado na tag `<link>` e o JavaScript através do atributo `src` da tag `<script>`.

As duas primeiras opções, apesar de reduzirem o número de requisições, aumentam o tamanho do documento HTML. Elas podem ser interessante quando você tem arquivos pequenos e o custo de uma requisição é maior. Nesse caso, faça testes para avaliar se há realmente ganho. Avalie também o objetivo da página e sua audiência, se o esperado é que usuários visitem essa página somente uma única vez, como por exemplo uma campanha temporária onde não se espera futuras visitas à mesma, utilizar inline/incorporado ajudará na redução do número de requisições.

*> Evite escrever manualmente o CSS/JS no meio do HTML (use uma ferramenta que automatize esse processo).*

Já a terceira opção, não só melhora a organização do seu código, como também possibilita que eles sejam armazenados no cache do navegador. Prefira essa opção para a maior parte dos casos, quando lidamos com arquivos grandes e muitas páginas.

*> [Ferramentas úteis](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-avoid-inlineembedded-code) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#wiki-avoid-inlineembedded-code)*
