---
order: 3
title: GZIP
---

Znaczna część zawartości strony to prosty tekst (HTML, CSS, JavaScript, JSON, XML, itd.). Włączenie kompresji GZIP na poziomie serwera dla tego rodzaju treści to bardzo dobra praktyka.

GZIP kopresuje dane na serwerze przed wysłaniem ich przez sieć do przeflądarki użytkownika, która dekoduje dane w locie. To tak jak skompresowanie pliku przed wysłaniem do kogoś, aby go zmniejszyć. Wszystkie nowoczesne przeglądarki i serwerzy obsługują GZIP.

Konfiguracja jest ustawiona na serwerze. Przykładowo, Apache udostępnia włączenie GZIP dla wybranych typów w pliku `.htaccess`:

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

Wszystkie popularne serwery konfiguruje się równie łatwo (sprawdź dokumentacji swojego!) i jest to jeden z najbardziej skutecznych sposobów poprawy wydajności strony.
