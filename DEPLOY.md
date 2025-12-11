# Railway 배포 가이드

## 🚀 Railway로 배포하기

### 방법 1: Railway CLI 사용 (가장 쉬움)

1. **Railway CLI 설치**
   ```bash
   npm install -g @railway/cli
   ```

2. **Railway 로그인**
   ```bash
   railway login
   ```
   - 브라우저가 열리면 GitHub 계정으로 로그인

3. **프로젝트 초기화**
   ```bash
   cd C:\Users\giraf\Documents\프로젝트\Gimcheon\trunk\SOURCE\pdfSaver
   railway init
   ```
   - 프로젝트 이름 입력 (예: pdf-splitter)

4. **배포**
   ```bash
   railway up
   ```
   - 자동으로 Docker 이미지 빌드 및 배포

5. **도메인 확인**
   ```bash
   railway domain
   ```
   - 생성된 URL 확인 (예: https://pdf-splitter.railway.app)

---

### 방법 2: Railway 웹사이트에서 배포

1. **Railway 가입**
   - https://railway.app 접속
   - GitHub 계정으로 로그인

2. **새 프로젝트 생성**
   - "New Project" 클릭
   - "Empty Project" 선택

3. **GitHub 저장소 연결**
   - GitHub에 프로젝트 업로드 필요
   - "Deploy from GitHub repo" 선택
   - 저장소 선택

4. **자동 배포**
   - Dockerfile을 자동으로 감지
   - 빌드 및 배포 시작

5. **도메인 설정**
   - Settings → Generate Domain
   - URL 생성 완료!

---

## 📝 배포 전 체크리스트

- [x] Dockerfile 생성
- [x] .dockerignore 생성
- [x] WAR 파일 빌드 (`mvn clean package`)
- [ ] Railway 계정 생성
- [ ] Railway CLI 설치 또는 GitHub 저장소 준비

---

## 🌐 배포 후 접속

배포 완료 후:
```
https://your-project-name.railway.app
```

친구에게 이 URL만 공유하면 됩니다!

---

## 💡 참고사항

- **무료 플랜**: 월 $5 크레딧 제공
- **자동 HTTPS**: SSL 인증서 자동 적용
- **자동 재시작**: 앱 크래시 시 자동 재시작
- **로그 확인**: Railway 대시보드에서 실시간 로그 확인 가능

---

## ⚠️ 문제 해결

### 빌드 실패 시
```bash
# 로컬에서 WAR 파일 다시 빌드
mvn clean package

# Dockerfile 문법 확인
docker build -t test .
```

### 앱이 시작되지 않을 때
- Railway 대시보드에서 로그 확인
- 8080 포트가 제대로 노출되었는지 확인
