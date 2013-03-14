---
order: 28
title: Unikaj kodu wbudowanego
---

Istnieją dwa sposoby na dołączanie CSS lub JavaScriptu na twojej stronie. 
There are two basic ways for you to include CSS or JavaScript on your page.

**1) Liniowy:** kod CSS jest zdefiniowany w znaczniku `<style>`, a kod JavaScript w znaczniku `<script>`.

**2) Zewnętrzny:** kod CSS jest ładowany ze znacznika `<link>`, a kod JavaScript z atrybutu `src` dla znacznika `<script>`.

Pierwsza opcja, wprawdzie zmniejsza liczbę żądań HTTP, jednak zwiększa rozmiar samego dokumentu HTML. Taka sytuacja jest użyteczna, kiedy mamy niewielkie zasoby, koszt każdego kolejnego żądania jest znaczący. W tym przypadku, istotne jest przeprowadzenie testów w celu określenia ewentualnego wzrostu szybkości. Konieczne jest określenie celów twojej strony i jej użytkowników. Jeśli planujesz, że twoja strona zostanie odwiedzona tylko jeden raz i nie spodziewasz się powracających użytkowników, przykładowo przy jednorazowych akcjach promocyjnych to kod wbudowany pomaga w zmniejszeniu liczby żądań HTTP.

*> Unikaj ręcznego tworzenia CSS/JS w środku dokumentu HTML (zalecana jest automatyzacja przy pomocy narzędzi).*

Druga opcja nie tylko poprawia organizację twojego kodu, ale również umożliwia przeglądarce jego przechowywanie w cache. Takie rozwiązanie jest zalecane w większości przypadków, szczególnie przy plikach dużych rozmiarów, gdzie koszt stosowania kodu wbudowanego jest wiekszy.

*> Przydatne narzędzia: [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*
