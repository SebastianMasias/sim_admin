# README
 

 Mi proyecto se basa en un dashboard para un admin y muchos clientes.

 El admin podra desde su dashboard crear clientes (unica forma de hacer, no existe un login regular) y crear simcard y asignarlas a un cliente.

 El cliente podra ver sus simcard desde su propio dashboard.

 Los datos para la base de datos de la simcard seran extraidos de dos apis proporcionadas por un proveedor. por lo que cada simcard vista en este proyecto realmente esta en funcionamiento, ya sea en equipos gps, de riego, entre otros.

 Para efectos practicos, al panel de admin no se le pondra password, sin embargo, se le sumara esa funcion con cancancan.

 link para trello: https://trello.com/b/prkjPUAB/api-sim-card

 En la primera tarea se encuentra la captura de los modelos dibujados en draw.io. 

 Respecto a la tarea 003. highcart y bootstrap no seran instalados por el momento.


Esta es la ruta para la vista de admin: 

http://localhost:3000/admin/


 
Sumado a lo anterior adjunto datos de acceso:

Admin: 

1@gmail.com
123456

cliente:

2@ejemplo.com
123456

feedback hito 2:


El cliente puede ingresar al panel de administración sin ser admin. - Corregido, un par de lineas de cancancan que no correspondian.


como ingreso simcards? no existen rutas para este recurso - desde el panel de admin se puede y es el unico sitio donde se puede tanto poner como dar de baja alguna, es intencional que sea asi.

No presenta landing page explicando web a las visitas - anexado, falta css y unas imagenes que pondre luego.

No se puede editar perfil - desde panel de admin, igual que simcard, se pretende que cliente deba solicitar cambios.

El cliente no puede interactuar con el sitio web, ni eliminar recursos - se pretende que cliente deba solicitar cambios.


No presenta sistema de calificación - realmente no se como integrar esto en mi idea.

hito 3: 

paypal aun incompleto. 

mailgun en consola da todo como correcto pero mail no llega :C

css basicamente terminado

Deploy pendiente.


