# language: es
Característica: Admin register

Esquema del escenario: Registro de Administradores
Dado que exite un administrador con email "elnaufrago2009@hotmail.com" y contraseña "12345678"
Cuando yo visito la pagina "/admins/sign_in" 
Y yo lleno en "admin_email" con "<email>"
Y yo lleno en "admin_password" con "<password>"
Y presiono "Sign in"
Entonces deberia ver este mensage "<message>"
Ejemplos:
| email 						| password 	| message 					|
| elnaufrago2009@hotmail.com	| 12345678	| Ha entrado correctamente	|
| elnaufrago2009@gmail.com 		| 1234 		| Invalido password 		|

Escenario: Administrador salir
Dado que soy un nuevo administrador y estoy autenticado con email "elnaufrago2009@hotmail.com" y contraseña "12345678"
Cuando hago click en "Sign Out"
Entonces deberia ver "Session terminada con exito"