REPO=~/.m2/repository


CLOJURE=$CLASSPATH:$REPO/org/clojure/clojure/1.6.0/clojure-1.6.0.jar
CLOJURE=$CLOJURE:$REPO/org/clojure/tools.nrepl/0.2.3/tools.nrepl-0.2.3.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-web/3.0.4.RELEASE/spring-web-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-context/3.0.4.RELEASE/spring-context-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-core/3.0.4.RELEASE/spring-core-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-beans/3.0.4.RELEASE/spring-beans-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-asm/3.0.4.RELEASE/spring-asm-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-expression/3.0.4.RELEASE/spring-expression-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/org/springframework/spring-asm/3.0.4.RELEASE/spring-asm-3.0.4.RELEASE.jar
CLOJURE=$CLOJURE:$REPO/commons-logging/commons-logging/1.1.1/commons-logging-1.1.1.jar
CLOJURE=$CLOJURE:$REPO/org/slf4j/slf4j-api/1.6.3/slf4j-api-1.6.3.jar
CLOJURE=$CLOJURE:$REPO/me/raynes/fs/1.4.5/fs-1.4.5.jar
CLOJURE=$CLOJURE:./src/test/clojure
CLOJURE=$CLOJURE:$REPO/net/matlux/jvm-breakglass/0.0.7/jvm-breakglass-0.0.7.jar
CLOJURE=$CLOJURE:./target/server-test-1.0-SNAPSHOT.jar
CLOJURE=$CLOJURE:${PWD}

OPTIONS=-Dcom.sun.management.jmxremote.port=9595
OPTIONS=$OPTIONS\ -Dcom.sun.management.jmxremote.ssl=false
OPTIONS=$OPTIONS\ -Dcom.sun.management.jmxremote.authenticate=false
OPTIONS=$OPTIONS\ -Djava.rmi.server.hostname=localhost
#OPTIONS=$OPTIONS\ -Djava.rmi.server.hostname=192.168.0.20

java -cp "$CLOJURE" $OPTIONS net.matlux.testserver.SpringServerExample "$@"
