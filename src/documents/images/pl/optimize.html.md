---
order: 5
title: Optymalizuj swoje obrazy
---

Pliki obrazów zawierają wiele informacji, ktore są bezużyteczne w sieci. Przykładowe zdjęcie JPEG zawiera metadane *Exif* z aparatu (jak data, model aparatu, miejsce, itp.). Plik PNG zawiera informacje o kolorach, metadanych, a czasami nawet osadzoną miniaturę. Nic z tego nie jest używane przez przeglądarkę, a tylko przyczynia się do zwiększenia rozmiaru pliku.

Istnieją narzędzia do optymalizacji obrazów, które usuwają te niepotrzebne dane i zmiejszają rozmiar plików bez utraty jakości. Mówimy wtedy o kompresji *bezstratnej*.

Inny sposób optymalizacji obrazów to kompresja kosztem pogorszenia jakości obrazu. Nazywamy to kompresją *stratną*. Podczas eksportowania obrazów JPEG, przykładowo wybieramy jakość (liczba między 0 a 100). Myśląc o wydajności, zawsze wybieramy najniższą liczbę z możliwych, gdzie jakość jest do zaakceptowania. Inna powszechna technika stratna to zmniejszenie palety kolorów w formacie PNG lub konwersji plików PNG-24 do formatu PNG-8.

*> Przdatne narzędzia **online**: [Kraken.io](http://kraken.io), [Smush.it](http://www.smushit.com), [TinyPNG](http://tinypng.org/), [JPEGmini](http://jpegmini.com/).*

*> Przydatne **programy komputerowe**: [ImageOptim](http://imageoptim.com/) (Mac), [RIOT](http://luci.criosweb.ro/riot/download/) (Windows), [ImageAlpha](http://pngmini.com/) (Mac).*

Istnieje wiele na narzędzi z linii poleceń, jak *pngout*, *jpegtran*, *gifsicle*, *imgopt* i więcej.
