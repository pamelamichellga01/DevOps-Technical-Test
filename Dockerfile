# Usar una imagen base con Java 17
FROM openjdk:17-slim

#Directorio donde se colocara la aplicacion en el contenedor
WORKDIR /app

#Copiar el archivo jar del proyecto al directorio /app en el contenedor
COPY target/parkinglot-0.0.1-SNAPSHOT.jar /app/parkinglot.jar

#Exponer el puerto que usa la aplicacion
EXPOSE 1222

#Comando para ejecutar la aplicacion
CMD ["java", "-jar", "/app/parkinglot.jar"]
