# lanaguage: es
Característica: Acceso de administracion

Escenario: Admin registro
Dado que existe un administrador con email "elnaufrago2009@hotmail.com" y password "12345678"
Cuando yo visito la pagina "/admins/sign_in"
Y yo lleno en "admin_email" con "<email>"
Y yo lleno en "admin_password" con "<password>"
Y yo presiono "Sign in"
Entonces deberia ver "<message>"

Ejemplos:
| email 						| password 		| message 			|
| elnaufrago2009@hotmail.com	| 12345678		| Ingreso con exito	|
| elnaufrago2009@gmail.com		| 1234 			| Ingreso invalido	|

