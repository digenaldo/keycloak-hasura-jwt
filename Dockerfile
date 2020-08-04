FROM jboss/keycloak:11.0.0
USER jboss

ADD deployments/keycloak-scripts.jar /opt/jboss/keycloak/standalone/deployments

RUN sed -i -e 's/<web-context>auth<\/web-context>/<web-context>keycloak\/auth<\/web-context>/' /opt/jboss/keycloak/standalone/configuration/standalone.xml
RUN sed -i -e 's/<web-context>auth<\/web-context>/<web-context>keycloak\/auth<\/web-context>/' /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml

CMD ["-Dkeycloak.profile.feature.upload_scripts=enabled", "-Dkeycloak.profile.feature.scripts=enabled", "-b", "0.0.0.0"]
