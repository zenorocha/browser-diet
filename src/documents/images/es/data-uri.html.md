---
order: 7
title: Data URI
---

Esta técnica es una alternativa a usar sprites.

Una [Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme) es una forma de poner en línea el contenido de la URI a la que apuntarías normalmente. En este ejemplo estamos usándolo para poner en línea el contenido de un background-image para reducir el número de solicitudes HTTP requeridas para cargar la página.

Antes:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

Después:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

Todos los navegadores desde IE8 soportan esta técnica.

Tanto este método como el uso de sprites requieren herramientas para ser mantenibles. Éste método tiene la ventaja de no requerir el posicionamiento manual de las sprites ya que mantiene tus imágenes en archivos individuales durante el desarrollo.

Sin embargo, tiene la desventaja de aumentar el tamaño de tu HTML/CSS considerablemente si tienes imágenes grandes. Éste método no es recomendado si no estás comprimiendo con gzip tu HTML/CSS durante las solicitudes HTTP, ya que el aumento de tamaño puede sobrepasar a la ganancia en velocidad.

*> [Herramientas útiles](https://github.com/zenorocha/browser-diet/wiki/Tools#data-uri) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*
