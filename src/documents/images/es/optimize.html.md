---
order: 3
title: Optimiza tus imágenes
---

Los archivos de imágenes contienen muchísima información inútil en la Web. Por ejemplo una foto JPEG puede tener metadatos *Exif* sobre la cámara (fecha, modelo de cámara, ubicación, etc.). Una imagen PNG contiene información sobre colores, metadatos, y a veces incluso una miniatura incrustada. Nada de esto es usado por el navegador y contribuye al aumento del tamaño del archivo.

Hay herramientas para la optimización de imágenes que borrarán estos datos innecesarios y te darán un archivo más ligero sin afectar a la calidad. Decimos que hacen una *compresión sin pérdida*.

Otra forma de optimizar imágenes es comprimirlas a cambio de calidad visual. Llamamos a esto una *optimización con pérdida*. Cuando exportas un JPEG, por ejemplo, puedes escoger el nivel de calidad (un número del uno al 100). Pensando en el rendimiento, siempre escoge el menor número posible mientras la calidad visual sea aceptable. Otra forma común de optimizar con pérdida es reducir la paleta de colores en un PNG, o convertir archivos PNG-24 en PNG-8.

Para mejorar la percepción de rendimiento del usuario, deberías también transformar todos tus archivos JPEG en JPEGs progresivos. Los JPEGs progresivos son soportados por una gran cantidad de navegadores, son muy simples de crear, y no conllevan ningúna pérdida de rendimiento significativa. La ventaja es que la imagen aparecerá más pronto en la página ([ver demo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> [Herramientas útiles](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-optimize-your-images) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*
