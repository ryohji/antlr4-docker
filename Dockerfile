FROM alpine:latest

ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH $JAVA_HOME/bin:$PATH
RUN apk add --no-cache openjdk11

RUN ANTLR_JAR=antlr-4.8-complete.jar;\
 BIN=/usr/local/bin; LIB=/usr/local/lib;\
 wget -P $LIB https://www.antlr.org/download/$ANTLR_JAR;\
 echo -e "#!/bin/sh\njava -Xmx500M -cp .:$LIB/$ANTLR_JAR org.antlr.v4.Tool \$@"\
 >$BIN/antlr4; chmod a+x $BIN/antlr4;\
 echo -e "#!/bin/sh\njava -Xmx500M -cp .:$LIB/$ANTLR_JAR org.antlr.v4.gui.TestRig \$@"\
 >$BIN/grun; chmod a+x $BIN/grun
