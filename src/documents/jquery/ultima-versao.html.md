---
title: Sempre utilizar a última versão do jQuery
slug: jquery-ultima-versao
order: 2
---

Os membros do core do jQuery estão sempre buscando trazer novidades para a biblioteca, estes ajustes muitas vezes, estão relacionados a otimização de algoritmos, novas funcionalidades e melhorias da legibilidade.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
http://blog.jquery.com/

Ainda podemos destacar que se deve evitar referências para o estático da última versão. Manter uma boa política de testes facilitará bastante essa atualização.


Para descobrir a versão atualmente utilizada do jQuery, execute:
```js
jQuery.fn.jquery
```