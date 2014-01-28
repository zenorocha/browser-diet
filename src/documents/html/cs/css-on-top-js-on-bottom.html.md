---
order: 25
title: Styly nahoru/scripty dolů
---

Když vložíme styly do `<head>`, umožníme tak progresivní vykreslení stránky. Uživateli se tak zdá, že se stránka načítá rychleji.

```html
<head>
  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">
</head>
```

Pokud ale vložíme styly na konec stránky, nejprve dojde k vykreslení beze stylů, až poté jsou styly staženy a aplikovány.

<div class="img-right">
  <img id="geek-32" class="icos-geek" src="http://browserdiet.com/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

Na druhou stranu, když jde o JavaScript, je důležité umístit skripty na spodek stránky, protože ty blokují vykreslování stránky, zatímco jsou načítány a spouštěny.

```html
<body>
  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>
</body>
```

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#styles-up-top-scripts-down-bottom)*