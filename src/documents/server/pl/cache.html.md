---
order: 4
title: Aktywuj inteligentne buforowanie
---

Najlepszym sposobem na optymalizację żądań ze strony jest brak żądań, ale to oczywiste. Jednym z najbardziej, użytecznych sposobów uniknięcia niepotrzebnych żądań to buforowanie w pamięci podręcznej przeglądarki. Domyślnie przeglądarka sama decyduje o czsie buforowania plików, ale możliwe jest ustawienie dokładnego czasu przechowywania plików w pamięci podręcznej.

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

Konfiguracja taka jest umieszczona na serwerze. Apache, przykładowo umożliwia ustawienie buforowania w pliku `.htaccess`:

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

Powyższe instrukcje trzymają obrazy, CSS i JS przez 6 miesięcy&mdash; zaleca się buforowanie ich przynajmniej przez jeden miesiąc. Inne serwery konfigurujemy podobnie.

Jedna ważna rzecz do zapamiętania, jeśli plik jest przechowywany w pamięci podręcznej, przęglądarka nie pobierze więcej noweszego pliku. Wysłanie nowej wersji wymaga zmiany nazwy pliku. Jednym ze sposobów na osiągnięcie tego jest dodawanie wersji lub stempla czasu do nazwy pliku. Przykładowo, zamiast `home.js` używamy `home-v1.js`, a w razie aktualizacji nowego `home-v2.js` i tak dalej.

Inna popularna technika obsługi buforowania to przesyłanie parametru GET w adresie URL: `home.js?v=1` i `home.js?v=2`. Podana metoda ma pewną wadę w porównaniu z zmianą nazw plików, ponieważ niektóre serwery proxy ignorują parametry GET, co unimożliwia odświeżenie pamięci podręcznej, gdy tego potrzebujesz.

*> [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
