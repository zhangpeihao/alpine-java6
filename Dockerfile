FROM zhangpeihao/alpine-base

ADD jdk-6u35-linux-x64.bin /opt/jdk-6u35-linux-x64.bin

RUN cd /opt/ && \
	yes | ./jdk-6u35-linux-x64.bin && \
	mv /opt/jdk1.6.0_35/jre /opt/java6 && \
	rm -rf /opt/jdk-6u35-linux-x64.bin \
           /opt/jdk1.6.0_35 \
           /opt/java6/plugin \
           /opt/java6/bin/javaws \
           /opt/java6/bin/jjs \
           /opt/java6/bin/keytool \
           /opt/java6/bin/orbd \
           /opt/java6/bin/pack200 \
           /opt/java6/bin/policytool \
           /opt/java6/bin/rmid \
           /opt/java6/bin/rmiregistry \
           /opt/java6/bin/servertool \
           /opt/java6/bin/tnameserv \
           /opt/java6/bin/unpack200 \
           /opt/java6/lib/javaws.jar \
           /opt/java6/lib/deploy* \
           /opt/java6/lib/desktop \
           /opt/java6/lib/*javafx* \
           /opt/java6/lib/*jfx* \
           /opt/java6/lib/amd64/libdecora_sse.so \
           /opt/java6/lib/amd64/libprism_*.so \
           /opt/java6/lib/amd64/libfxplugins.so \
           /opt/java6/lib/amd64/libglass.so \
           /opt/java6/lib/amd64/libgstreamer-lite.so \
           /opt/java6/lib/amd64/libjavafx*.so \
           /opt/java6/lib/amd64/libjfx*.so \
           /opt/java6/lib/ext/jfxrt.jar \
           /opt/java6/lib/ext/nashorn.jar \
           /opt/java6/lib/oblique-fonts \
           /opt/java6/lib/plugin.jar

ENV JAVA_HOME=/opt/java6 \
    PATH=${PATH}:/opt/java6/bin \
    LANG=zh_CN.UTF-8

