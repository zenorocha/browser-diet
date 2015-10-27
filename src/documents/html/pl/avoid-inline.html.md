---
order: 23
title: Unikaj kodu wbudowanego
---

Istnieją trzy podstawowe sposoby na dołączanie CSS lub JavaScriptu na twojej stronie:

**1) Liniowy:** kod CSS jest zdefiniowany w znaczniku `<style>`, a kod JavaScript w atrybucie `onclick` dowolnego znacznika HTML.

**2) Wbudowany:** kod CSS jest zdefiniowany w znaczniku `<style>`, a kod JavaScript w znaczniku `<script>`.

**3) Zewnętrzny:** kod CSS jest ładowany ze znacznika `<link>`, a kod JavaScript z atrybutu `src` dla znacznika `<script>`.

Pierwsze dwie opcje, wprawdzie zmniejszają liczbę żądań HTTP, jednak zwiększają rozmiar samego dokumentu HTML. Taka sytuacja jest użyteczna, kiedy mamy niewielkie zasoby, koszt każdego kolejnego żądania jest znaczący. W tym przypadku, istotne jest przeprowadzenie testów w celu określenia ewentualnego wzrostu szybkości. Konieczne jest określenie celów twojej strony i jej użytkowników. Jeśli planujesz, że twoja strona zostanie odwiedzona tylko jeden raz i nie spodziewasz się powracających użytkowników, przykładowo przy jednorazowych akcjach promocyjnych to kod wbudowany pomaga w zmniejszeniu liczby żądań HTTP.

*> Unikaj ręcznego tworzenia CSS/JS w środku dokumentu HTML (zalecana jest automatyzacja przy pomocy narzędzi).*

Trzecia opcja nie tylko poprawia organizację twojego kodu, ale również umożliwia przeglądarce jego przechowywanie w cache. Takie rozwiązanie jest zalecane w większości przypadków, szczególnie przy plikach dużych rozmiarów, gdzie koszt stosowania kodu wbudowanego jest wiekszy.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-avoid-inlineembedded-code) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#avoid-inlineembedded-code).*
