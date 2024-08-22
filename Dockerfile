FROM bellsoft/liberica-runtime-container:jre-17-stream-musl
WORKDIR .
EXPOSE 8761
COPY target/*-SNAPSHOT.jar app.jar
CMD ["sh", "-c", "sleep 80 && java -jar /app.jar"]
