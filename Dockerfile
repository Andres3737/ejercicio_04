FROM openjdk:11
WORKDIR /usr/scr/app
RUN useradd -m appuser  
COPY passwordapi.jar . 
EXPOSE 8080  
RUN chown -R appuser:appuser /usr/scr/app
USER appuser
CMD ["java", "-jar", "passwordapi.jar"]

