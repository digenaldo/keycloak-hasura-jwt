FROM jboss/keycloak:11.0.0

ADD deployments/keycloak-scripts.jar /opt/jboss/keycloak/standalone/deployments
