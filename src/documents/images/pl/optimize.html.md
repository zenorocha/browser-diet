---
order: 3
title: Optymalizuj swoje obrazy
---

Pliki obrazów zawierają wiele informacji, ktore są bezużyteczne w sieci. Przykładowe zdjęcie JPEG zawiera metadane *Exif* z aparatu (jak data, model aparatu, miejsce, itp.). Plik PNG zawiera informacje o kolorach, metadanych, a czasami nawet osadzoną miniaturę. Nic z tego nie jest używane przez przeglądarkę, a tylko przyczynia się do zwiększenia rozmiaru pliku.

Istnieją narzędzia do optymalizacji obrazów, które usuwają te niepotrzebne dane i zmiejszają rozmiar plików bez utraty jakości. Mówimy wtedy o kompresji *bezstratnej*.

Inny sposób optymalizacji obrazów to kompresja kosztem pogorszenia jakości obrazu. Nazywamy to kompresją *stratną*. Podczas eksportowania obrazów JPEG, przykładowo wybieramy jakość (liczba między 0 a 100). Myśląc o wydajności, zawsze wybieramy najniższą liczbę z możliwych, gdzie jakość jest do zaakceptowania. Inna powszechna technika stratna to zmniejszenie palety kolorów w formacie PNG lub konwersji plików PNG-24 do formatu PNG-8.

Aby zwiększyć wydaność postrzeganą przez użytkownika należy przekształcić wszystkie pliki JPEG do wersji progresywnych. Progresywne pliki JPEG mają dobrą obsługę w przeglądarkach, są bardzo proste do tworzenia i nie mają znaczącego spadku wydajności. Plusem jest to, że obraz pojawi się wcześniej na stronie ([zobacz prezentację](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-optimize-your-images) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*
