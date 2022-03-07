FROM openjdk:11
WORKDIR /usr/scr/app  
COPY passwordapi.jar . 
EXPOSE 8080  
CMD ["java", "-jar", "passwordapi.jar"]

