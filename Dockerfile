# 该镜像需要依赖的基础镜像
FROM carsharing/alpine-oraclejdk8-bash
# 将targer目录下的jar包复制到docker容器/home/springboot目录下面目录下面
ADD ./target/demo-0.0.1-SNAPSHOT.jar /mydata/demo-0.0.1-SNAPSHOT.jar
# 声明服务运行在8080端口
EXPOSE 7004
# 执行命令
CMD ["java","-jar","/mydata/demo-0.0.1-SNAPSHOT.jar"]
# 指定维护者名称
MAINTAINER Mirror 393015989@qq.com
