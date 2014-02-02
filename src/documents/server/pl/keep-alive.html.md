---
order: 5
title: Dyrektywa `keep-alive`
---

Każde żądanie HTTP wymaga ustanowienia połączenia TCP dla komunikacji klienta z serwerem.

Taki proces jest kosztowny i czasochłonny, szczególnie ze względu na "trzy-stopniowy uścisk dłoni". Ważne jest korzystanie z utworzonych połączeń podczas transportowania danych przez kolejne żądania.

Ustawienie takie określa dyrektywa `keep-alive`.

Konfiguracja zależy od typu serwera. Na przykład, Apache określa ten stan poprze plik `.htaccess`:

```
<IfModule mod_headers.c>
  Header set Connection keep-alive
</IfModule>
```

*> [Referencje](https://github.com/cleberdantas/browser-diet/wiki/References#wiki-keep-alive)*