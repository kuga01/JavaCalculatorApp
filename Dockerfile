#FROM lolhens/baseimage-openjre
FROM jetty:9.2.10

# Working Directory
#WORKDIR /usr/src/javacalculator

# Copy war file into container
#ADD ./JavaCalculatorApp.war ./
ADD JavaCalculatorApp/target/JavaCalculatorApp.war JavaCalculatorApp.war
#COPY JavaCalculatorApp/target/JavaCalculatorApp.war ./

# Expose container port
EXPOSE 3000

# Set directory for volume
VOLUME /var/lib/javacalculator

ENTRYPOINT ["java", "-jar", "JavaCalculatorApp.war"]
