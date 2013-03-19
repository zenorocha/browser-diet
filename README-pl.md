*[Leia em Português](https://github.com/zenorocha/browser-diet/blob/master/README-pt.md)*

---

# Jak schudnąć (w przeglądarce)

Ostateczny przewodnik wydajności dla stron internetowych.

![image](http://f.cl.ly/items/0H2J2d2r2S402o180B2n/five-geeks.jpg)

## Contributing

Jeśli chcesz dodać nowe wskazówki lub zmienić już istniejące, przejdź do katalogu [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents). Znajdziesz tam wszystkie wskazówki napisane w formacie [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown). Pamiętaj o dodaniu przypisów na końcu każdej wskazówki, które zostały zapisane w [References](https://github.com/zenorocha/browser-diet/wiki/References) na wiki.

## Instrukcje

### Jak lokalnie uruchomić projekt?

1. Zainstaluj [Git](http://git-scm.com/downloads) i [NodeJS](http://nodejs.org/download/), jeśli jeszcze ich nie masz.

2. Otwórz terminal i ściągnij [DocPad](https://github.com/bevry/docpad) przez podane polecenie:
```bash
sudo npm install -fg docpad
```

3. Sklonuj projekt:
```bash
git clone git@github.com:<your-github-username>/browser-diet.git
```

4. Przejdź do katalogu projektu:
```bash
cd browser-diet
```

5. Zainstaluj wszystkie zależności:
```bash
docpad install
```

6. Wreszcie uruchom:
```bash
docpad run
```

Teraz widzisz działającą wersja na `localhost:9778` :D

### Jak uruchomić inną wersję językową?

Poprostu przejdź do pliku [docpad.coffee](https://github.com/zenorocha/browser-diet/blob/master/docpad.coffee) i zmień wartość zmiennej `currentLang`.

Później wystarczy tylko ponowne uruchomienie, czyli `docpad run`.

## Struktura

Projekt używa [DocPad](https://github.com/bevry/docpad), statycznego generatora w NodeJS, o poniższej strukturze:

<pre>
.
|-- out/
|-- src/
|   |-- documents
|   |-- layouts
|   |-- partials
`-- package.json
</pre>

### out/

To miejsce przechowywania wygenerowanych plików, jeśli DocPad został już uruchomiony. Jednakże, katalog ten nie jest potrzebny do wersjonowania, więc został zignorowany ([.gitignore](https://github.com/zenorocha/browser-diet/blob/master/.gitignore)).

### [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents)

Zawiera wszystkie wskazów w formacie [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown), oprócz obrazów, czcionek i plików JS.

### [src/layouts](https://github.com/zenorocha/browser-diet/tree/master/src/layouts)

Zawiera domyślny szablon.

### [src/partials](https://github.com/zenorocha/browser-diet/tree/master/src/partials)

Zawiera kod wielokrotnego użytku.

### [package.json](https://github.com/zenorocha/browser-diet/blob/master/package.json)

Lista wszystkich zależności NodeJS.

## Zespół

* [Zeno Rocha](https://github.com/zenorocha) (Liferay)

### Projekt

* [Briza Bueno](http://www.brizabueno.com/) (Americanas.com)

### Autorzy

* [Davidson Fellipe](https://github.com/davidsonfellipe) (Globo.com)
* [Giovanni Keppelen](https://github.com/keppelen) (ex-Peixe Urbano)
* [Jaydson Gomes](https://github.com/jaydson) (Terra)

### Recenzenci

* [Marcel Duran](https://github.com/marcelduran) (Twitter)
* [Mike Taylor](https://github.com/miketaylr) (Opera)
* [Renato Mangini](https://github.com/mangini) (Google)
* [Sérgio Lopes](https://github.com/sergiolopes) (Caelum)

## Uznanie

* DocPad - [Benjamin Lupton](https://github.com/balupton)
* Highlight.js - [Ivan Sagalaev](https://github.com/isagalaev/)

### Fonts

* Pacifico - [Vernon Adams](http://www.fontsquirrel.com/license/pacifico)
* Open Sans - [Steve Matteson](http://www.google.com/webfonts/specimen/Open+Sans)
* Horseshoes - [Lauren Ashpole](http://www.laurenashpole.com/licensing.html)

### Ilustracje

* The 56 Geeks Project - [Scott Johnson](http://myextralife.com/56geeks/)

## Licencja

Kod korzysta z licencji [MIT](http://zenorocha.mit-license.org), której treść jest w [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
