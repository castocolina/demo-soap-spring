clean:
	./gradlew clean --warning-mode all

boot-run: clean
	./gradlew bootRun -x test --warning-mode all

run-as-jvm: clean
	./gradlew run -x test --warning-mode all

build: clean
	./gradlew build -x test --info --warning-mode all

assemble: clean
	./gradlew assemble -x test --info --warning-mode all

build-run-java: build
	java -jar build/libs/demo-soap-spring-0.0.1-SNAPSHOT.jar

open-wsdl:
	xdg-open http://127.0.0.1:8080/ws/countries.wsdl >/dev/null

task:
	./gradlew task --warning-mode all

.PHONY: build