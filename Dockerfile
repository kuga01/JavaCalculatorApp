FROM lolhens/baseimage-openjre
ADD JavaCalculatorApp.war JavaCalculatorApp.war
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "JavaCalculatorApp.war"]
