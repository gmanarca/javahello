FROM java:8
MAINTAINER Guillaume Mandier

COPY src /home/centos/javahello/src

WORKDIR /home/centos/javahello
RUN mkdir bin && javac -d bin src/Helloworld.java

ENTRYPOINT ["java", "-cp", "bin", "Helloworld"]
