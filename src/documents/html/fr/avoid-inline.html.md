---
order: 26
title: Évitez le code inline/embedded
---

Il y a trois façons basique d'inclure du CSS ou du javascript sur votre page:

**1) Inline:** le CSS est défini dans une balise `style`  et le JavaScript dans un attribut `onclick` par exemple, dans n'importe quel balise HTML ;

**2) Embedded:** Le CSS est defini dans une balise `<style>` et le JavaScript dans une balise `<script>` ;

**3) Externe:** le CSS est chargé depuis un `<link>` et le JavaScript depuis un attribut `src` d'une balise `<script>`.

Les deux premières options, bien que réduisant le nombre de requêtes HTTP, en réalité augmentent la taille de votre document HTML. Cela peut-être utile quand vous avez peu de css/javascript le coût d'une nouvelle requête est plus important. Dans ce cas, faites des test et évaluer si cela conduit à un gain de vitesse. De plus soyez sûr d'analyser le but de votre page et son public, si par exemple votre page est une campagne temporaire où vous n'attendez pas que les utilisateurs reviendront le code inlining/embedded vous aidera à réduire le nombre de requêtes HTTP.

*> Evitez d'éditer manuellement le CSS/JS au milieu de votre HTML (automatiser le processus avec un outils est préférable).*

La troisième option outre le fait d'améliorer l'organisation de votre code, donne la possiblité à votre navigateur de mettre en cache. Cette option doit être préféré dans la majorité des cas surtout lorsque l'on travaille sur des fichiers volumineux et beaucoup de pages.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#avoid-inlineembedded-code) / [Réferences](https://github.com/zenorocha/browser-diet/wiki/References#avoid-inlineembedded-code)*
