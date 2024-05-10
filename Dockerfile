#Use official image from Amazoncorretto

FROM amazoncorretto:22-al2023

#Copy this file JAR in the directory /app at the image

COPY server.jar /app/server.jar


EXPOSE 25565

#Directory of work
WORKDIR /app

#Command to run this app Java
CMD ["java", "-Xmx2G", "-Xms1024M", "-jar", "server.jar", "nogui"]