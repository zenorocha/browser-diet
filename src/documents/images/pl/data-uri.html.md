---
order: 5
title: Data URI
---

Opisana technika jest alternatywą dla używania 'CSS sprites'.

Technika [Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme) jest sposobem na wstawienie danych z określonego adresu. W tym przypadku używamy jej do wstawienia treści jako tła obrazka dla właściwości CSS w celu ograniczenia liczby żądań HTTP potrzebnych do załadowania strony.

Przed:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

Po:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

Wszystkie przeglądarki od IE8 i nowsze wspierają technikę kodowania base64.

Zarówno metoda kodowania base64, jak i CSS sprites wymagają odpowiednich narzędzi do zarządania. Zaletą tej metody jest brak ręcznego pozycjonowania obrazów, które dalej są trzymane w osobnych plikach w czasie rozwoju projektu.

Wadą tego rozwiązania jest rosnący rozmiar HTML/CSS, jeśli mamy duże obrazy. Technika ta nie jest zalecana, jeżeli wynikowy kod HTML/CSS nie jest kompresowany, ponieważ wiele większy rozmiar plików i dłuższy czas pobierania będzie nieadekwatny do zysków ze zmniejszenia liczby żądań HTTP.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-data-uri) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*
