---
order: 6
title: Nie skaluj obrazów w znacznikach
---

Zawsze określaj rozmiary obrazów poprzez atrybuty `width` i `height`. Pomoże to w uniknięciu niepotrzebnego przesuwania elementów podczas generowania strony.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

Wiedząc, o tym programista Jan K. ma obraz *700x700px* i decyduje się na jego wyświetlenie w postaci obrazu *50x50px*.

Co, czy pan programista nie zdaje sobie sprawy, że dziesiątki niepotrzebnych *kilobajtów* zostaną przesłane przez sieć.

Zawsze miej na uwadze. Możliwość określenia szerokości i wysokości obrazu w HTML nie oznacza, że powienieneś to robić, aby zmniejszyć duże obrazy.
