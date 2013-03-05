---
order: 4
title: Prefira <link> do que @import
---

Há duas maneiras de incluir uma folha de estilo externa na sua página, pode ser através da tag `<link>`:

```html
<link rel="stylesheet" href="style.css" media="all">
```

Ou da propriedade `@import`:

```css
@import url('style.css');
```

Quando você utiliza a segunda opção a partir de uma folha de estilo externa, o navegador é incapaz de realizar o download em paralelo, o que causa atraso na cascata de carregamento dos arquivos.