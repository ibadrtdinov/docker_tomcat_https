FROM tomcat:8-jre8
ENV CATALINA_MEMORY="1G"
ADD entrypoint1.sh ${CATALINA_HOME}/bin/
VOLUME ["/webapps"]
EXPOSE 8443
CMD ["entrypoint1.sh"]
