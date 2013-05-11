# How to lose weight (in the browser) [![Build Status](https://secure.travis-ci.org/zenorocha/browser-diet.png?branch=master)](https://travis-ci.org/zenorocha/browser-diet)

The definitive front-end performance guide.

![image](http://f.cl.ly/items/0H2J2d2r2S402o180B2n/five-geeks.jpg)

## Contributing

If you want to add new tips or edit the existing ones, just go to the [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents) folder. There you can find all of them in [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown) format. Remember to add references on each tip that you write at [References](https://github.com/zenorocha/browser-diet/wiki/References) wiki.

## Instructions

### How can I locally run the project?

1. Install [Git](http://git-scm.com/downloads) and [NodeJS](http://nodejs.org/download/), if you don't have them already.

2. Open your terminal and download [DocPad](https://github.com/bevry/docpad) through this command:
```bash
sudo npm install -fg docpad
```

3. Now clone it:
```bash
git clone git@github.com:<your-github-username>/browser-diet.git
```

4. Then go to the project's folder:
```bash
cd browser-diet
```

5. Install all dependencies:
```bash
docpad install
```

6. And finally run:
```bash
docpad run
```

Now you can see the website running at `localhost:9778` :D

### How can I run another language version?

Simply go to the [docpad.coffee](https://github.com/zenorocha/browser-diet/blob/master/docpad.coffee) file and change the value of the `currentLang` variable.

Then you just need to run `docpad run` again.

## Structure

This project uses [DocPad](https://github.com/bevry/docpad), a static generator in NodeJS, and here's the basic structure:

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

This is where the generated files are stored, once DocPad has been run. However, this directory is unnecessary for versioning, so it is ignored ([.gitignore](https://github.com/zenorocha/browser-diet/blob/master/.gitignore)).

### [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents)

Contains all tips in [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown) format, in addition to images, fonts, CSS and JS files.

### [src/layouts](https://github.com/zenorocha/browser-diet/tree/master/src/layouts)

Contains the default template.

### [src/partials](https://github.com/zenorocha/browser-diet/tree/master/src/partials)

Contains reusable blocks of code.

### [package.json](https://github.com/zenorocha/browser-diet/blob/master/package.json)

Lists all NodeJS dependencies.

## Team

BrowserDiet was made with love by these people and a bunch of awesome [contributors](https://github.com/zenorocha/browser-diet/graphs/contributors).

### Creator

* [Zeno Rocha](http://zenorocha.com) (Liferay)

### Design

* [Briza Bueno](http://www.brizabueno.com/) (Americanas.com)

### Authors

* [Davidson Fellipe](https://github.com/davidsonfellipe) (Globo.com)
* [Giovanni Keppelen](https://github.com/keppelen) (ex-Peixe Urbano)
* [Jaydson Gomes](https://github.com/jaydson) (Terra)

### Reviewers

* [Marcel Duran](https://github.com/marcelduran) (Twitter)
* [Mike Taylor](https://github.com/miketaylr) (Opera)
* [Renato Mangini](https://github.com/mangini) (Google)
* [Sérgio Lopes](https://github.com/sergiolopes) (Caelum)

### Translations

* [Mike Taylor](https://github.com/miketaylr) (English)
* [Emilio Cobos Álvarez](https://github.com/ecoal95) (Spanish)
* [Lukasz Jakub Adamczuk](https://github.com/lukasz-jakub-adamczuk) (Polish)
* [Fordlee](https://github.com/fordlee404) (Chinese)

## Credits

* DocPad by [Benjamin Lupton](https://github.com/balupton)
* Highlight.js by [Ivan Sagalaev](https://github.com/isagalaev/)

### Fonts

* Pacifico by [Vernon Adams](http://www.fontsquirrel.com/license/pacifico)
* Open Sans by [Steve Matteson](http://www.google.com/webfonts/specimen/Open+Sans)
* Horseshoes by [Lauren Ashpole](http://www.laurenashpole.com/licensing.html)

### Illustrations

* The 56 Geeks Project by [Scott Johnson](http://myextralife.com/56geeks/)

## License

Code is under [MIT](http://zenorocha.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)