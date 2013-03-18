---
ignored: true
order: 11
title: Usa GET para las peticiones AJAX
---

El equipo de [Yahoo! Mail](http://mail.yahoo.com) se dió cuenta de que, usando XMLHTTPRequest, POST está implementado en los navegadores como un proceso que se realiza en dos pasos: primero envía las cabeceras y después los datos. Así que es mejor usar GET porque sólo envía un paquete TCP (a menos que tenga muchas cookies). La longitud máxima de una URL en IE es 2K, así que si envías más de 2K de datos seguramente no podrás usar GET.

Una cosa muy interesante es que POST, cuando se usa sin enviar datos, se comporta como GET. Basándonos en la [especificación de HTTP](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html), GET sirve para obtener información, así que tiene más sentido (semánticamente) usar GET cuando sólo se necesita obtener información, al contrario que cuando se quiere almacenar información en el servidor.

Con javascript plano:

```js
function reqListener () {
  console.log(this.responseText);
};
 
var oReq = new XMLHttpRequest();
oReq.onload = reqListener;
// oReq.open("post", "tuArchivo.txt", true); // Mal
oReq.open("get", "tuArchivo.txt", true); // Bien
oReq.send();
```

Con jQuery:

```js
$.ajax({
	url: 'tuArchivo.txt',
	// type: 'POST', // Mal
	type: 'GET', // Bien
	success: function(data, status, jqXHR) {
	},
	error: function(jqXHR, status, errorThrown) {
	}
});
```