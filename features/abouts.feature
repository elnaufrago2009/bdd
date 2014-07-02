# language: es
Característica: Abouts

Escenario: editar abouts
Dado que existe un about con id "1"
Cuando visito "/abouts/1/edit"
Y lleno el campo "about_title" con "Quienes somos"
Y lleno el campo "about_subtitle" con "La empresa"
Y lleno el campo "about_image" con "/image/about.jpg"
Y lleno el campo "about_content_title" con "La empresa"
Y lleno el campo "about_content" con "Empresa de desarrollo web"
Y hago click en el boton "edit"
Entonces deberia ver el mesaje "Los cambios han sido guardados"

Escenario: Eliminar abouts
Dado que creo un nuevo registro en abouts y visito la pagina principal abouts
Cuando elimino ese registro
Entonces deberia ver el mensaje se elimino correctamente


