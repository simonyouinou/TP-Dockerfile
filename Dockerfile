# Utilisation de l'image de base OpenJDK 17
FROM openjdk:17

# Copie du fichier .jar généré dans le conteneur
COPY target/*.jar app-devops.jar

# Exposition du port 80 pour l'accès à l'application
EXPOSE 80

# Lancement de l'application Spring Boot
CMD ["java", "-jar", "app-devops.jar", "--server.port=80"]