*[Read in English](https://github.com/zenorocha/browser-diet/blob/master/README-es.md)*

---

# Cómo perder peso (en el navegador)

La guía definitiva para rendimiento front-end.

![image](http://f.cl.ly/items/0H2J2d2r2S402o180B2n/five-geeks.jpg)

## Contribuir

Si quieres añadir nuevos consejos o editar los ya existentes, símplemente ve al directorio [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents). Allí puedes encontrar todos en formato [Markdown (.md)](http://es.wikipedia.org/wiki/Markdown). Recuerda añadir referencias en cada truco que escribas en la wiki ([References](https://github.com/zenorocha/browser-diet/wiki/References)).

## Instrucciones

### Cómo puedo ejecutar el proyecto localmente

1. Instala [Git](http://git-scm.com/downloads) y [NodeJS](http://nodejs.org/download/), si aún no los tienes.

2. Abre tu terminal y descarga [DocPad](https://github.com/bevry/docpad) mediante este comando:
```bash
sudo npm install -fg docpad
```

3. Ahora clónalo:
```bash
git clone git@github.com:<tu-usuario-de-github>/browser-diet.git
```

4. Entonces ve al directorio del proyecto:
```bash
cd browser-diet
```

5. Instala las dependencias:
```bash
docpad install
```

6. Y finalmente ejecútalo:
```bash
docpad run
```

Ahora puedes ver la web en `localhost:9778` :D

### Cómo puedo ejecutarla con otro lenguaje?

Simplemente ve al archivo [docpad.coffee](https://github.com/zenorocha/browser-diet/blob/master/docpad.coffee) y cambia el valor de la variable `currentLang`.

Después sólo tienes que ejecutar `docpad run` otra vez.

## Estructura

Éste proyecto usa [DocPad](https://github.com/bevry/docpad), un generador estático en NodeJS, y aquí está la estructura básica:

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

Aquí es donde los archivos generados son almacenados, una vez se ha ejecutado DocPad. Sin embargo, éste directorio es innecesario para versionar, así que se ignora ([.gitignore](https://github.com/zenorocha/browser-diet/blob/master/.gitignore)).

### [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents)

Contiene todos los consejos en formato [Markdown (.md)](http://es.wikipedia.org/wiki/Markdown), además de archivos de imágenes, fuentes, CSS y JS.

### [src/layouts](https://github.com/zenorocha/browser-diet/tree/master/src/layouts)

Contiene la plantilla por defecto.

### [src/partials](https://github.com/zenorocha/browser-diet/tree/master/src/partials)

Contiene bloques de código reusables.

### [package.json](https://github.com/zenorocha/browser-diet/blob/master/package.json)

Una lista con todas las dependencias de NodeJS.

## Equipo

* [Zeno Rocha](https://github.com/zenorocha) (Liferay)

### Diseño

* [Briza Bueno](http://www.brizabueno.com/) (Americanas.com)

### Autores

* [Davidson Fellipe](https://github.com/davidsonfellipe) (Globo.com)
* [Giovanni Keppelen](https://github.com/keppelen) (ex-Peixe Urbano)
* [Jaydson Gomes](https://github.com/jaydson) (Terra)

### Revisores

* [Marcel Duran](https://github.com/marcelduran) (Twitter)
* [Mike Taylor](https://github.com/miketaylr) (Opera)
* [Renato Mangini](https://github.com/mangini) (Google)
* [Sérgio Lopes](https://github.com/sergiolopes) (Caelum)

### Traducciones

* [Mike Taylor](https://github.com/miketaylr) (Inglés)
* [Emilio Cobos Álvarez](https://github.com/ecoal95) (Español)

## Créditos

* DocPad por [Benjamin Lupton](https://github.com/balupton)
* Highlight.js por [Ivan Sagalaev](https://github.com/isagalaev/)

### Fuentes

* Pacifico por [Vernon Adams](http://www.fontsquirrel.com/license/pacifico)
* Open Sans por [Steve Matteson](http://www.google.com/webfonts/specimen/Open+Sans)
* Horseshoes por [Lauren Ashpole](http://www.laurenashpole.com/licensing.html)

### Ilustraciones

* The 56 Geeks Project por [Scott Johnson](http://myextralife.com/56geeks/)

## Licencia

El código está bajo licencia [MIT](http://zenorocha.mit-license.org) y el contenido bajo licencia [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)