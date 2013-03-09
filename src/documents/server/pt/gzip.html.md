---
order: 3
title: Gzip
---

Boa parte do conteúdo que trafegamos em um site é texto (HTML, CSS, JavaScript, JSON, XML etc). Para esse tipo de conteúdo, é uma boa prática habilitar a compressão GZIP no servidor.

O GZIP comprime os dados no servidor antes de enviar via rede para o navegador do usuário. É como zipar um arquivo antes de mandar pra alguém, o tamanho final fica bem menor. Todos os navegadores modernos têm suporte a GZIP, assim como os servidores.

A configuração é específica de servidor, então é difícil falar de todos aqui. Mas costuma ser bem simples. No Apache, por exemplo, você pode editar o arquivo `.htaccess` e habilitar o deflate para os tipos de arquivo que quiser:

```
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/javascript
```

Essa configuração costuma ser bem simples de fazer em todos os servidores do mercado (veja na documentação do seu!) e é uma das dicas mais eficientes para se melhorar a performance da página.