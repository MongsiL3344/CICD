# 1. 사용할 자바 버전 이미지 (JDK 17 기준)
FROM eclipse-temurin:17-jdk-jammy
# 2. JAR 파일이 복사될 위치 설정
WORKDIR /app

# 3. 빌드된 JAR 파일을 컨테이너 내부로 복사
# 프로젝트 루트에서 실행되므로 build/libs/ 경로를 그대로 인식합니다.
COPY build/libs/*.jar app.jar

# 4. 애플리케이션 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]