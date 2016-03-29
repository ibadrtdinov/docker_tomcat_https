FROM tomcat:8-jre8
ENV CATALINA_MEMORY="1G"

ENV CATALINA_HOME /home/tomcat/apache-tomcat-7.0.54-employee
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

ADD entrypoint.sh ${CATALINA_HOME}/bin/
VOLUME ["/webapps"]
EXPOSE 8443
CMD ["entrypoint.sh"]
