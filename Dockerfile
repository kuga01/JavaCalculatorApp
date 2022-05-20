FROM lolhens/baseimage-openjre
ADD target/JavaCalculatorApp.war JavaCalculatorApp.war
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "JavaCalculatorApp.war"]
