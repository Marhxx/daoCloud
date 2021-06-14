# 该镜像需要依赖的基础镜像
FROM jdk-8:v1
ADD demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/app.jar"]
