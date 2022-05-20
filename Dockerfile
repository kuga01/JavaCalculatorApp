FROM lolhens/baseimage-openjre

# Working Directory
WORKDIR /usr/src/javacalculator

# Copy war file into container
ADD ./JavaCalculatorApp.war ./

# Expose container port
EXPOSE 3000

# Set directory for volume
VOLUME /var/lib/javacalculator

ENTRYPOINT ["java", "-jar", "./JavaCalculatorApp.war"]
