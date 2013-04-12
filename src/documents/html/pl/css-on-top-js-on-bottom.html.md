---
order: 27
title: Style na początku, skrypty na końcu
---

Kiedy dołączany arkusze styli w znaczniku `<head>` pozwalamy na stopniowe generowanie strony, co sprawia wrażenie szybszego ładowania.

Jeśli jednak umieścimy arkusze na końcu kodu strony, całość zostanie wygenerowana bez styli, dopóki pliki CSS nie zostaną pobrane i zastosowane.

Z drugiej strony, jeśli omawiamy JavaScript, bardzo ważne jest umieszczenie skryptów na końcu strony, aby nie blokowały generowania w czasie ładowania i wykonywania.

```html
<!doctype html>
<html>
<head>

  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">

</head>
<body>

  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>

</body>
</html>
```
