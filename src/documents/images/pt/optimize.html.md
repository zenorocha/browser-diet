---
order: 5
title: Otimize suas imagens
---

Arquivos de imagens possuem muitos KB de informações desnecessárias na Web. Por exemplo, uma foto JPEG tem um monte de metadados *Exif* colocados pela câmera (data da foto, modelo da câmera, local etc). Um PNG possui uma série de informações sobre cores, metadados e, às vezes, até uma miniatura da imagem embutida no meio. Nada disso é importante para a renderização da imagem no navegador e só gasta bytes de rede.

Existem ferramentas de otimização de imagens que removem todas essas informações desnecessárias e te dão um arquivo mais enxuto mas visualmente idêntico. Elas fazem uma compressão sem perda de qualidade visual (chamamos de *lossless*).

Outra forma de otimizar imagens é comprimi-las com certas perdas visuais aceitáveis. Otimizações *lossy*. Quando você exportar um JPEG, por exemplo, pode escolher a qualidade (um número de 0 a 100). Pensando em performance, pegue sempre o número mais baixo onde a qualidade visual ainda é aceitável. Outra otimização *lossy* famosa é diminuir o número de cores na paleta de um PNG, ou transformar arquivos PNG-24 em PNG-8.

Para melhorar a performance percebida pelo usuário, você deve transformar todos seus arquivos JPEGs em progressivos. JPEGs progressivos têm ótimo suporte nos navegadores, são muito fáceis de criar e não têm nenhum problema de performance significativo. O bom é que a imagem vai aparecer bem antes na página ([veja demo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> Ferramentas **online** úteis: [Kraken.io](http://kraken.io), [Smush.it](http://www.smushit.com), [TinyPNG](http://tinypng.org/), [JPEGmini](http://jpegmini.com/).*

*> Ferramentas **desktop** úteis: [ImageOptim](http://imageoptim.com/) (Mac), [RIOT](http://luci.criosweb.ro/riot/download/) (Windows), [ImageAlpha](http://pngmini.com/) (Mac).*

Além disso, há ferramentas em linha de comando como *pngout*, *jpegtran*, *gifsicle*, *imgopt* e mais.