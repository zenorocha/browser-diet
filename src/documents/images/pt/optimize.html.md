---
order: 3
title: Otimize suas imagens
---

Arquivos de imagens possuem muitos KB de informações desnecessárias na Web. Por exemplo, uma foto JPEG tem um monte metadados exif colocados pela câmera (data da foto, modelo da câmera, local etc). Um PNG possui uma série de informações sobre cores, metadados e, às vezes, até uma miniatura da imagem embutida no meio. Nada disso é importante para a renderização da imagem no navegador e só gasta bytes de rede.

Existem ferramentas de otimização de imagens que removem todas essas informações desnecessárias e te dão um arquivo mais enxuto mas visualmente idêntico. Online, você encontra a [Kraken.io](http://kraken.io), o [Smush.it](http://www.smushit.com), entre outras. Para instalar no computador, existe o [ImageOptim](http://imageoptim.com/) (Mac) ou o [RIOT](http://luci.criosweb.ro/riot/download/) (Windows). Além disso, há ferramentas em linha de comando como *pngout*, *jpegtran*, *gifsicle* e mais.

As ferramentas anteriores são bem fáceis de usar e geram arquivos menores mas com a mesma imagem do arquivo original. Elas fazem uma compressão sem perda de qualidade visual (chamamos de *lossless*). Outra forma de otimizar imagens é comprimi-las com certas perdas visuais aceitáveis. Otimizações *lossy*.

Quando você exportar um JPEG, por exemplo, pode escolher a qualidade (um número de 0 a 100). Pensando em performance, pegue sempre o número mais baixo onde a qualidade visual ainda é aceitável. Uma ferramenta online que ajuda a diminuir a qualidade de JPEGs com perdas visualmente imperceptíveis é a [JPEGmini](http://jpegmini.com/). Outra otimização lossy famosa é diminuir o número de cores na paleta de um PNG, ou transformar arquivos PNG-24 em PNG-8.