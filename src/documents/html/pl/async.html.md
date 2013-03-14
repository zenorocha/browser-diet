---
order: 25
title: Używaj atrybutów `async` i `defer`
---

Najlepszym wyjaśnieniem wpływu podanych atrybutów na lepszą wydajność, będzie zrozumienie tego, co dzieje się bez ich stosowania.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="http://browserdiet.com/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

W tym przypadku, strona czeka do momentu, w którym skrypt zostanie całkowicie pobrany, przeanalizowany i wykonany, zanim przejdzie do analizowani i generowania HTML. Takie działanie powoduje dodatkowy narzut na czas ładowania strony. Przeważnie jest to zachowanie nieporządane.

``` html
<script async src="example.js"></script>
```

Skrypt jest pobierany asynchronicznie, a pozostała część stony jest nadal analizowana. Mamy gwarancję uruchomienia skryptu tuż po zakończeniu jego pobierania.

``` html
<script defer src="example.js"></script>
```

Poobnie jak poprzednia skrypt jest pobierany asynchronicznie. Jednak uruchomiany jest dopiero w momencie zakończenia analizy strony.
