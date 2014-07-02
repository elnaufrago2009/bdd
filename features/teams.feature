# language: es
Característica: funcionalidades del Team

Escenario: New Team
Dado que quiero registrar un nuevo usuario al team
Cuando entro en la pagina "/teams/new"
Y lleno "team_nombre" con "Abraham Linares"
Y lleno "team_image" con "image.jpg"
Y lleno "team_funcion" con "Desarrollador"
Y lleno "team_resumen" con "Desarrollador Ruby on Rails con Experiencia"
Y lleno "team_facebook" con "facebook_abraham_linares"
Y lleno "team_linkening" con "linkening_moises"
Y lleno "team_twitter" con "twitter_moises"
Y lleno "team_googlemas" con "googlemas_moises"
Y hago click en guardar
Entonces deberia ver el mensaje de "Creado correctamente!"

Escenario: Edit Team
Dado que existe un elemento del team
Cuando yo lo edito 
Y lleno "team_nombre" con "Abraham Linares"
Y lleno "team_image" con "image.jpg"
Y lleno "team_funcion" con "Desarrollador"
Y lleno "team_resumen" con "Desarrollador Ruby on Rails con Experiencia"
Y lleno "team_facebook" con "facebook_abraham_linares"
Y lleno "team_linkening" con "linkening_moises"
Y lleno "team_twitter" con "twitter_moises"
Y lleno "team_googlemas" con "googlemas_moises"
Y hago click 'Guardar'
Entonces deberia ver un mensage diciendo "El Team se edito correctamente."




