---
order: 19
title: Piensa sobre tu Key selector
---

El *Key selector* es el selector clave de tu expresión CSS.  Por lo general, los desarrolladores no piensan sobre él porque no saben exactamente cómo funciona.

```css
header nav ul li a {}
```

Échale un vistazo a la expresión anterior. Lo que pasa es que el navegador empieza evaluando la expresión desde la derecha&mdash;en este caso el *key selector* es `a`. Ésta expresión en particular está haciendo que el navegador haga mucho trabajo. Primero busca todos los elementos `a` del documento, después todos los `li` que contienen un elemento `a`, y así sucesivamente hasta que encuentra `header nav ul li a`.

```css
header nav ul li a { /* Peor */ }
nav a { /* Malo */ }
nav a.nav-link { /* Mejor */ }
nav .nav-link { /* Mejor aún */ }
.nav-link { /* El mejor */ }
```

Sobre todo, evita utilizar el selector universal (`*`) como key selector, ya que fuerza al navegador a buscar sobre **todos** los elementos de la página.

```css
.foo > *
```