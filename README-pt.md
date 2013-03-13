*[Read in English](https://github.com/zenorocha/browser-diet/blob/master/README.md)*

---

# Como perder peso (no browser)

O guia definitivo de performance para o desenvolvedor front-end.

![image](http://f.cl.ly/items/0H2J2d2r2S402o180B2n/five-geeks.jpg)

## Contribuindo

Para adicionar novas dicas ou editar dicas existentes, basta se dirigir a pasta [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents). Lá você irá encontrar todas elas em formato [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown). Lembre-se também de adicionar as referências de cada dica na wiki [References](https://github.com/zenorocha/browser-diet/wiki/References).

## Instruções

### Como faço para rodar o projeto localmente?

1. Instale o [Git](http://git-scm.com/downloads) e o [NodeJS](http://nodejs.org/download/), caso você não os tenha ainda.

2. Abra o terminal e baixe o [DocPad](https://github.com/bevry/docpad) através do comando:
```bash
sudo npm install -fg docpad
```

3. Agora clone o projeto:
```bash
git clone git@github.com:<your-github-username>/browser-diet.git
```

4. Depois vá para pasta do projeto:
```bash
cd browser-diet
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

### Como faço para rodar a versão em outra língua?

Basta entrar no arquivo [docpad.coffee](https://github.com/zenorocha/browser-diet/blob/master/docpad.coffee) e alterar o valor da variável `currentLang`.

Depois é só rodar novamente: `docpad run`.

## Estrutura

O projeto é feito utilizando o [DocPad](https://github.com/bevry/docpad), um static generator em NodeJS, e a estrutura se dá na seguinte forma:

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

É onde os arquivos gerados são armazenados, uma vez que o DocPad tenha sido rodado. Porém, esse diretório se torna desnecessário no versionamento, por isso está ignorado ([.gitignore](https://github.com/zenorocha/browser-diet/blob/master/.gitignore)).

### [src/documents](https://github.com/zenorocha/browser-diet/blob/master/src/documents)

Contém todas as dicas em formato [Markdown (.md)](http://pt.wikipedia.org/wiki/Markdown), além das imagens, fontes, arquivos CSS e JS.

### [src/layouts](https://github.com/zenorocha/browser-diet/tree/master/src/layouts)

Contém o template padrão da aplicação.

### [src/partials](https://github.com/zenorocha/browser-diet/tree/master/src/partials)

Contém blocos de código reaproveitáveis.

### [package.json](https://github.com/zenorocha/browser-diet/blob/master/package.json)

Lista as dependências de módulos do NodeJS.

## Time

* [Zeno Rocha](https://github.com/zenorocha) (Liferay)

### Design

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

### Traduções

* [Mike Taylor](https://github.com/miketaylr) (Inglês)
* [Emilio Cobos Álvarez](https://github.com/ecoal95) (Espanhol)

## Créditos

* DocPad por [Benjamin Lupton](https://github.com/balupton)
* Highlight.js por [Ivan Sagalaev](https://github.com/isagalaev/)

### Fontes

* Pacifico por [Vernon Adams](http://www.fontsquirrel.com/license/pacifico)
* Open Sans por [Steve Matteson](http://www.google.com/webfonts/specimen/Open+Sans)
* Horseshoes por [Lauren Ashpole](http://www.laurenashpole.com/licensing.html)

### Ilustrações

* The 56 Geeks Project por [Scott Johnson](http://myextralife.com/56geeks/)

## Licença

O código encontra-se sob licença [MIT](http://zenorocha.mit-license.org) e todo conteúdo sob licença [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.pt_BR)