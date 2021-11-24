# Container para AD
## Historia
Esta idea de crear un container nace da incomodidade a hora de traballar cunha VM 
(transportala e a propia interfaz e programas que poden estar antiquados ou non instalados).
A partir desta idea xurde o plan de conseguir poder traballar dende o host e ademais transportar
solo unha carpeta, a webapps.
## Instruccións de instalación
### Descarga do repositorio
So fai falta facer un git clone "link https ou ssh"
#### Advertencia
A hora de descargar non o metas dentro doutro repositorio posto que non vas ter permisos para subir
despois. Eu recomendo crear unha carpeta aparte chamada Containers.
### Meter as túas apps
Para meter os jsp e tan sinxelo como copiar o contido do teu webapps na carpeta webapps do repositorio.
#### Recomendación
Con respecto o anterior punto recomendo eliminar o .git deste repositorio e crear un novo 
repositorio git na carpeta webapps cando a teñas coas túas apps.
En caso de querer crear o git podedes seguir as instrucións que veñen no gitlab o crear un novo
proxecto en blanco sen o readme.md.
### Levantar containers
Executa na carpeta do repositorio o seguinte comando:
  <br/>docker-compose up -d.
<br/>Esto levantara dous container un ca BBDD e outro co tomcat.
### Probar se funcionou
Méteste no navegador do host e buscar localhost:8080/carpeta/algo.jsp. 
En caso de que non funcione pódese mirar o que pasa. En caso de que esto ocurra contactadesme por
correo, na clase ou por what o que mellor vos veña.
## Explicacións de este Readme
Non sei se está moi ben organizado así que quen lea esto que sea benevolente que é o primeiro que fago xd.
