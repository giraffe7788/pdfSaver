FROM tomcat:9-jdk11

# WAR 파일을 Tomcat webapps 디렉토리로 복사
# ROOT.war = 루트 경로(/)로 접속
# pdfSaver.war = /pdfSaver 경로로 접속
COPY target/pdfSaver.war /usr/local/tomcat/webapps/pdfSaver.war

# 8080 포트 노출
EXPOSE 8080

# Tomcat 실행
CMD ["catalina.sh", "run"]
