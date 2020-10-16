# Base image
FROM jboss/wildfly
 
# Create user jota with password jota1234
RUN /opt/jboss/wildfly/bin/add-user.sh campi campi1234 --silent
 
# Add custom configuration file
# ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/
 
# Add hello.war to deployments
# ADD hello.war /opt/jboss/wildfly/standalone/deployments/
 
# JBoss ports
EXPOSE 8080 9990 8009
 
# Run
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone.xml"]
