---
order: 20
title: Pomyśl o (i przemyśl) swoje selektory
---

Odpowiedni selektor to klucz do twoich wydajnych wyrażeń CSS. Rzadko, koderzy koncentrują się na złożoności reguł, bo nie wiedzą dokładnie jak one działają.

```css
header nav ul li a {}
```

Spójrz na powyższe wyrażenie. Co dzieje się kiedy przeglądarka rozpoczyna analizowanie wyrażenia CSS od prawej strony&mdash;w tym przypadku kluczowe jest `a`. Takie wyrażenie wymaga od przeglądarki sporo pracy. Na początku szukamy wszystkich elementów `a` w kodzie HTML, później wszystkich elementów `li`, zawierających `a`, aż do momentu znalezienia `header nav ul li a`.

```css
header nav ul li * { /* źle */ }
header nav ul li a { /* gorzej */ }
nav a { /* źle */ }
nav a.nav-link { /* lepiej */ }
nav .nav-link { /* lepiej */ }
.nav-link { /* lepiej */ }
```
