Laboratorio 01: Sistema de Control de Versiones y Dockerización - UNSA
​Este proyecto consiste en la automatización de un entorno de servidor web Apache sobre Ubuntu 24.04 utilizando Docker. Se implementan VirtualHosts para gestionar múltiples sitios web de forma independiente.  
​Estructura del Proyecto
​Dockerfile: Instrucciones para construir la imagen.  
​developers.conf: Configuración del VirtualHost para el sitio de los desarrolladores.  
​webapp.conf: Configuración del VirtualHost para la aplicación web previa.  
​/developers: Contiene index.html (sobre el grupo), contact.html y webstandards.html.  
​/webapp: Contiene el proyecto del curso anterior desplegado.  
​Instrucciones de Despliegue
​Clonar el repositorio:
git clone https://github.com/josesin12/daw-lab01  
​Construir la imagen:
docker build -t lab01-apache .  
​Ejecutar el contenedor:
docker run -d -p 8080:80 --name contenedor-lab01 lab01-apache  
​Detalles de la Tarea
​Sistema Operativo: Ubuntu 24.04.  
​Servidor Web: Apache HTTP Server 2.x.  
​Tecnologías: HTML5, CSS3 y JS nativo para manipulación del DOM.  
​Validación: Código validado con estándares de la W3C.  
​Integrantes del Grupo
​Marcelo Flores Solis  
​Alejandro Mendoza Pantigoso  
​Jose Kana Huanqque  
​Asignatura: Programación - Semestre 2025-A
Escuela Profesional de Ingeniería de Sistemas - UNSA
