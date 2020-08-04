FROM jboss/keycloak:11.0.0

ADD deployments/keycloak-scripts.jar /opt/jboss/keycloak/standalone/deployments

CMD ["-Dkeycloak.profile.feature.upload_scripts=enabled", "Dkeycloak.profile.feature.scripts=enabled", "-b", "0.0.0.0"]
