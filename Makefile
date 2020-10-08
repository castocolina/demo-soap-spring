run:
	./gradlew clean build bootRun

build-run-java:
	./gradlew clean build
	java -jar build/libs/demo-soap-spring-0.0.1-SNAPSHOT.jar
