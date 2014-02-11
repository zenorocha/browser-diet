---
order: 20
title: Preferuj <link> zamiast @import
---

Istnieją dwa sposoby na dołączenie zewnętrznych arkuszy stylów do twojej strony: poprzez znacznik `<link>`:

```html
<link rel="stylesheet" href="style.css">
```

lub poprzez dyrektywę `@import` (wewnątrz pliku ze stylami lub w środku znacznika `<style>`):

```css
@import url('style.css');
```

Druga opcja, w przypadku stylów zewnętrznych blokuje w przeglądarce pobieranie równoległe, co dalej ogranicza pobieranie kolejnych zasobów.

*> [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#prefer--over-import)*
