---
order: 26
title: Vyhněte se inline/vloženému kódu
---

Existují tři základní cesty, jak vložit CSS nebo JavaScript do stránky:

**1) Inline:** CSS je definováno uvnitř `style` atributu a JavaScript například uvnitř `onclick` atributu u libovolné HTML značky;

**2) Vložené:** CSS je definováno uvnitř `<style>` tagu a JavaScript uvnitř `<script>` tagu;

**3) Externí:** CSS je nahráno z `<link>` a JavaScript z `src` atributu tagu `<script>`.

První dvě varianty, nehledě na to, že snižují počet HTTP požadavků, ve skutečnosti zvětšují velikost HTML dokumentu. Přesto to může být výhodné, pokud máte malé soubory a náklady na request jsou větší problém. V takovém případě spusťe testy a vyhodnoťte, zda nastane zrychlení. Také zvažte smysl vaší stránky a její návštěvnost: pokud očekáváte, že uživatel navštíví stránku jen jednou, například při nějaké dočasné kampani, kde nečekáte, že se uživatel bude vracet, inlinový/vložený kód pomůže snížit počet HTTP požadavků.

*> Vyhněte se psaní CSS/JS uvnitř vašeho HTML (raději jej automatizujte pomocí nástrojů).*

Třetí varianta nejen zlepšuje organizaci vašeho kódu, ale také umožňuje prohlížečům aktivovat kešování. Tato varianta by měla být preferována pro naprostou většinu případů, zvláště, pokud pracujete s velkými soubory a mnoha stránkami.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#avoid-inlineembedded-code) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#avoid-inlineembedded-code)*
