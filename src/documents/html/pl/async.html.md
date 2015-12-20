---
order: 21
title: Spróbuj asynchronicznie
---

Najlepszym wyjaśnieniem wpływu podanych atrybutów na lepszą wydajność, będzie zrozumienie tego, co dzieje się bez ich stosowania.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="https://browserdiet.com/assets/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

W tym przypadku, strona czeka do momentu, w którym skrypt zostanie całkowicie pobrany, przeanalizowany i wykonany, zanim przejdzie do analizowania i generowania HTML. Takie działanie powoduje dodatkowy narzut na czas ładowania strony. Przeważnie jest to zachowanie nieporządane.

``` html
<script async src="example.js"></script>
```

Skrypt jest pobierany asynchronicznie, a pozostała część stony jest nadal analizowana. Mamy gwarancję uruchomienia skryptu tuż po zakończeniu jego pobierania.

*> [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#try-out-async)*
