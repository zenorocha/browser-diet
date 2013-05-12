# How to lose weight (in the browser) [![Build Status](https://secure.travis-ci.org/zenorocha/browser-diet.png?branch=master)](https://travis-ci.org/zenorocha/browser-diet)

The definitive front-end performance guide.

![image](http://f.cl.ly/items/0H2J2d2r2S402o180B2n/five-geeks.jpg)

## Contributing

If you want to add new tips or edit the existing ones, just go to the [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents) folder. There you can find all of them in [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown) format. Remember to add references on each tip that you write at [References](https://github.com/zenorocha/browser-diet/wiki/References) wiki.

## Instructions

#### How can I locally run the project?

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

#### How can I run another language version?

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

#### out/

This is where the generated files are stored, once DocPad has been run. However, this directory is unnecessary for versioning, so it is ignored ([.gitignore](https://github.com/zenorocha/browser-diet/blob/master/.gitignore)).

#### [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents)

Contains all tips in [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown) format, in addition to images, fonts, CSS and JS files.

#### [src/layouts](https://github.com/zenorocha/browser-diet/tree/master/src/layouts)

Contains the default template.

#### [src/partials](https://github.com/zenorocha/browser-diet/tree/master/src/partials)

Contains reusable blocks of code.

#### [package.json](https://github.com/zenorocha/browser-diet/blob/master/package.json)

Lists all NodeJS dependencies.

## Team

BrowserDiet was made with love by these people and a bunch of awesome [contributors](https://github.com/zenorocha/browser-diet/graphs/contributors).

#### Creator

[![Zeno Rocha](http://gravatar.com/avatar/e190023b66e2b8aa73a842b106920c93?s=70)](http://zenorocha.com) |
--- | --- | --- | --- | --- | --- | ---
[Zeno Rocha](http://zenorocha.com)<br>Liferay, Inc. |

#### Design

[![Briza Bueno](http://gravatar.com/avatar/c272a0a8972473fdf231f2b2d897c242?s=70)](http://www.brizabueno.com/) |
--- | --- | --- | --- | --- | --- | ---
[Briza Bueno](http://www.brizabueno.com/)<br>Americanas |

#### Authors

[![Davidson Fellipe](http://gravatar.com/avatar/054c583ad5dc09a861874e14dcb43e4c?s=70)](https://github.com/davidsonfellipe) | [![Giovanni Keppelen](http://gravatar.com/avatar/8f5c490b5b30ac6d655eced70cea4e5f?s=70)](https://github.com/keppelen) | [![Jaydson Gomes](http://gravatar.com/avatar/572696200604e59baa59ee90d61f7d02?s=70)](https://github.com/jaydson)
--- | --- | --- | --- | --- | --- | ---
[Davidson Fellipe](https://github.com/davidsonfellipe)<br>Globo.com | [Giovanni Keppelen](https://github.com/keppelen)<br>ex-Peixe Urbano | [Jaydson Gomes](https://github.com/jaydson)<br>Terra

#### Reviewers

[![Marcel Duran](http://gravatar.com/avatar/87ce1e1fe50034eb0f7b6eaeb5dd9a76?s=70)](https://github.com/marcelduran) | [![Renato Mangini](http://gravatar.com/avatar/61ffaf1af13c5626d3cd975275b2ddfd?s=70)](https://github.com/mangini) | [![Sérgio Lopes](http://gravatar.com/avatar/3244c236c487924b4309fdd53cbb8633?s=70)](https://github.com/sergiolopes)
--- | --- | --- | --- | --- | --- | ---
[Marcel Duran](https://github.com/marcelduran)<br>Twitter | [Renato Mangini](https://github.com/mangini)<br>Google | [Sérgio Lopes](https://github.com/sergiolopes)<br>Caelum

#### Translations

[![Mike Taylor](http://gravatar.com/avatar/8d8b46576d7de08d9e1500587c0fa8ce?s=70)](https://github.com/miketaylr) | [![Emilio Álvarez](http://gravatar.com/avatar/87488b8b39dcff7dc6f34b062dbfce37?s=70)](https://github.com/ecoal95) | [![Lukasz Jakub](http://gravatar.com/avatar/7351c99c580e5aaf32212220d66dc3ba?s=70)](https://github.com/lukasz-jakub-adamczuk) | [![Fordlee](http://gravatar.com/avatar/a0f1f645387cf64667f804e134ce89d1?s=70)](https://github.com/fordlee404)
--- | --- | --- | --- | --- | --- | ---
[Mike Taylor](https://github.com/miketaylr)<br>English | [Emilio Álvarez](https://github.com/ecoal95)<br>Spanish | [Lukasz Jakub](https://github.com/lukasz-jakub-adamczuk)<br>Polish | [Fordlee](https://github.com/fordlee404)<br>Chinese

## Credits

* DocPad by [Benjamin Lupton](https://github.com/balupton)
* Highlight.js by [Ivan Sagalaev](https://github.com/isagalaev/)

#### Fonts

* Pacifico by [Vernon Adams](http://www.fontsquirrel.com/license/pacifico)
* Open Sans by [Steve Matteson](http://www.google.com/webfonts/specimen/Open+Sans)
* Horseshoes by [Lauren Ashpole](http://www.laurenashpole.com/licensing.html)

#### Illustrations

* The 56 Geeks Project by [Scott Johnson](http://myextralife.com/56geeks/)

## License

Code is under [MIT](http://zenorocha.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)