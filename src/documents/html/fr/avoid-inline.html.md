---
order: 26
title: Évitez le code inline/embedded
---

Il y a trois façons basiques d'inclure du CSS ou du JavaScript sur votre page :

**1) Inline :** le CSS est défini dans un attribut `style` et le JavaScript dans un attribut `onclick` par exemple, dans n'importe quelle balise HTML ;

**2) Embedded :** Le CSS est defini dans une balise `<style>` et le JavaScript dans une balise `<script>` ;

**3) Externe :** le CSS est chargé depuis un `<link>` et le JavaScript depuis un attribut `src` d'une balise `<script>`.

Les deux premières options, bien que réduisant le nombre de requêtes HTTP, augmentent en réalité la taille de votre document HTML. Cela peut-être utile quand vous avez peu de CSS/JavaScript et que le coût d'une nouvelle requête serait plus important. Dans ce cas, faites des testz et évalueé si cela conduit bien à un gain de vitesse. De plus, soyez sûr d'analyser le but de votre page et son public. Si par exemple votre page est une campagne temporaire et que vous ne vous attendez pas à ce que les utilisateurs reviennent, le code inlining/embedded vous aidera à réduire le nombre de requêtes HTTP.

*> Evitez d'éditer manuellement le CSS/JS au milieu de votre HTML (automatiser le processus avec un outil est préférable).*

La troisième option, outre le fait qu'elle améliore l'organisation de votre code, donne la possiblité à votre navigateur de mettre en cache vos fichiers. Cette option doit être préférée dans la majorité des cas, surtout lorsque vous travaillez sur des fichiers volumineux et beaucoup de pages.

*> [Outils utiles](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-avoid-inlineembedded-code) / [Réferences](https://github.com/zenorocha/browser-diet/wiki/References#avoid-inlineembedded-code)*
