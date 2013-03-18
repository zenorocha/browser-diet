---
ignored: true
order: 11
title: Use GET para os pedidos AJAX
---

A equipa de [Yahoo! Mail](http://mail.yahoo.com) viu que, quando se utilizar XMLHTTPRequest, POST é implementado nos navegadores como um processo que se faz em dois passos: no primeiro envia os headers e depois os datos. Então é melhor utilizar GET porque só envia um pacote TCP (a menos que tenha muitas cookies). A longitude máxima de uma URL no IE é 2K, então se enviares mais de 2K de datos é provável que não puderes usar GET.

Uma coisa interessante é que POST, quando se utilizar sem enviar dados, comporta-se como GET. Com base na [especificação HTML](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html), GET tem que ser utilizado para obter informação, então tem mais sentido (semanticamente) utilizar GET quando só se precisar de obter informação, ao contrario que quando precisa-se de guardar informação no servidor.

Com javascript simple:

```js
function reqListener () {
  console.log(this.responseText);
};
 
var oReq = new XMLHttpRequest();
oReq.onload = reqListener;
// oReq.open("post", "teuArquivo.txt", true); // Má
oReq.open("get", "teuArquivo.txt", true); // Bom
oReq.send();
```

Com jQuery:

```
$.ajax({
	url: 'teuArquivo.txt',
	// type: 'POST', // Má
	type: 'GET', // Bom
	success: function(data, status, jqXHR) {
	},
	error: function(jqXHR, status, errorThrown) {
	}
});
```