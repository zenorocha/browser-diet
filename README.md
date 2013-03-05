---

> **Atenção**: esse projeto está em fase de desenvolvimento, por favor não leve em consideração o conteúdo redigido até então.

---

# Como perder peso (no browser)

O guia definitivo de performance para desenvolvimento front-end

![image](http://f.cl.ly/items/0H2J2d2r2S402o180B2n/five-geeks.jpg)

## Contribuindo

Para adicionar novas dicas ou editar dicas existentes, basta se dirigir a pasta [src/documents](https://github.com/zenorocha/como-perder-peso/blob/master/src/documents).

Lá você irá encontrar todas elas em formato [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown). Não se preocupe caso você não conheça essa linguagem, é muito similar ao HTML e possui uma curva de aprendizado muito pequena.

Lembre-se também de adicionar as referências que você utilizou para escrever determinada dica na wiki [References](https://github.com/zenorocha/como-perder-peso/wiki/References).

## Primeiros passos

1. Instale o [Git](http://git-scm.com/downloads) e o [NodeJS](http://nodejs.org/download/), caso você não os tenha ainda.

2. Abra o terminal e baixe o [DocPad](https://github.com/bevry/docpad) através do comando:
```bash
sudo npm install -fg docpad@6.11
```

3. Agora clone o projeto:
```bash
git clone git@github.com:zenorocha/como-perder-peso.git
```

4. Depois vá para pasta do projeto:
```bash
cd como-perder-peso
```

5. Instale as dependências:
```bash
docpad install
```

6. E finalmente rode:
```bash
docpad run
```

Agora você irá ver o site rodando em `localhost:9778` :D

## Estrutura

O projeto é feito utilizando o [DocPad](https://github.com/bevry/docpad), um static generator em NodeJS, e a estrutura se dá na seguinte forma:

<pre>
.
|-- out/
|-- src/
|   |-- documents
|   |-- files
|   |-- layouts
|-- grunt-config.json
|-- grunt.js
|-- package.json
`-- publish.sh
</pre>

### out/

É onde os arquivos gerados são armazenados, uma vez que o DocPad tenha sido rodado. Porém, esse diretório se torna desnecessário no versionamento, por isso está ignorado ([.gitignore](https://github.com/zenorocha/como-perder-peso/blob/master/.gitignore)).

### [src/documents](https://github.com/zenorocha/como-perder-peso/blob/master/src/documents)

Contém todas as dicas em formato [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown).

### [src/files](https://github.com/zenorocha/como-perder-peso/tree/master/src/files)

Possui as imagens, fontes, arquivos CSS e JS.

### [src/layouts](https://github.com/zenorocha/como-perder-peso/tree/master/src/layouts)

Contém o template padrão da aplicação.

### [package.json](https://github.com/zenorocha/como-perder-peso/blob/master/package.json)

Lista as dependências de módulos do NodeJS.

## Contribuidores

### Autores

* [Davidson Fellipe](http://github.com/davidsonfellipe)
* [Giovanni Keppelen](http://github.com/keppelen)
* [Jaydson Gomes](http://github.com/jaydson)

### Revisores

* [Renato Mangini](http://github.com/mangini)

## Créditos

* DocPad por [Benjamin Lupton](https://github.com/balupton)
* Highlight.js por [Ivan Sagalaev](https://github.com/isagalaev/)

### Fontes

* Pacifico por [Vernon Adams](http://www.fontsquirrel.com/license/pacifico)
* Magra por [FontFuror](http://www.google.com/webfonts/specimen/Magra)
* Horseshoes por [Lauren Ashpole](http://www.laurenashpole.com/licensing.html)

### Imagens

* The 56 Geeks Project por [Scott Johnson](http://myextralife.com/56geeks/)

## Licença

O código encontra-se sob licença [MIT](http://zenorocha.mit-license.org) e todo conteúdo sob licença [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.pt_BR)