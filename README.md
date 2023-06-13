# Author: 
Eduardo Marval

# Date: 
13 Jun, 2023

# Title: 
Prueba - Desarrollo de aplicaciones con Ruby on
Rails

# Description:

Esteban se encuentra buscando una plataforma interna de su empresa. Lo que busca
concretamente es que sus empleados puedan postular a cargos internos dentro de ella, para
poder mejorar sus rentas y poder escalar dentro de su compañía. 

Por ello, el cliente nos ha
contactado con el fin de desarrollar dicha plataforma. Esteban entiende que no puede pedir
todo lo que se encuentra en su cabeza para el primer desarrollo, así que nos da unas
consideraciones de lo que sí o sí debe estar para su primera entrega.

Aplicando los conceptos y herramientas aprendidas hasta ahora debes dar resolución a las
siguientes peticiones de nuestro cliente:
● Solo Esteban puede hacer publicaciones donde se ofrezca un puesto en su empresa.

● Los usuarios no pueden registrarse, el administrador, en este caso Esteban, será
quien les cree las cuentas.

● Los usuarios podrán postular a las ofertas laborales internas y le debe llegar un
mensaje a Esteban avisando de esta postulación.

● Los usuarios deben tener en su perfil su propia foto y datos relevantes sobre ellos
para que Esteban pueda determinar internamente si les da el puesto o no.

● Un usuario debe tener una pequeña pestaña con sus postulaciones.

● Cuando una visita ingresa a la aplicación, solo debe haber una imagen a elección
libre sin instrucciones y un link a ingresar a la página.

El nombre de la aplicación será determinado en un futuro, por lo que deben darle un nombre
por ahora

# Requirements:

- Integrar imagen con Modelado de las entidades de la aplicación.

- Integrar prueba unitaria sobre el proceso de postulación de un usuario.

- Todas las imágenes deben estar alojadas en un bucket de S3.

- Solo integrar crud de usuarios y ofertas laborales.

- La aplicación debe ser subida a heroku y proveer de datos de prueba más una cuenta
administrador y usuario normal al docente para su revisión.

# usage:

RUN 

rails db:create

rails db:migrate

rails db:seed


Esto creara la base de datos y creara un usuario DEMO con el role de admin.

  email: "admin@example.com"
  password: "password"


