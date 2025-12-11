# GitHub Pages 배포 가이드

## 준비 완료!
이제 GitHub Pages로 배포할 준비가 끝났습니다. `index.html` 파일이 루트 디렉토리에 생성되었습니다.

---

## 배포 방법

### 1단계: GitHub에 푸시하기

현재 디렉토리에서 다음 명령어를 실행하세요:

```bash
# 변경사항 확인
git status

# index.html 파일 추가
git add index.html .gitignore

# 커밋
git commit -m "GitHub Pages용 index.html 추가"

# GitHub에 푸시
git push origin main
```

---

### 2단계: GitHub Pages 활성화

1. **GitHub 저장소로 이동**
   - 웹 브라우저에서 https://github.com/[사용자명]/pdfSaver 접속

2. **Settings 탭 클릭**
   - 저장소 상단의 "Settings" 탭 클릭

3. **Pages 메뉴 선택**
   - 왼쪽 사이드바에서 "Pages" 클릭

4. **Source 설정**
   - **Branch**: `main` 선택
   - **Folder**: `/ (root)` 선택
   - **Save** 버튼 클릭

5. **배포 완료 대기**
   - 약 1~2분 후 페이지 상단에 배포된 URL이 표시됩니다
   - URL 형식: `https://[사용자명].github.io/pdfSaver/`

---

## 배포 후 접속

배포 완료 후 다음 URL로 접속하세요:
```
https://[사용자명].github.io/pdfSaver/
```

친구에게 이 URL만 공유하면 됩니다!

---

## 업데이트 방법

나중에 코드를 수정하면:

```bash
# 변경사항 추가
git add .

# 커밋
git commit -m "업데이트 내용 설명"

# 푸시
git push origin main
```

푸시 후 1~2분 이내에 자동으로 업데이트됩니다!

---

## 장점

- **완전 무료**: 트래픽 제한 없음
- **자동 HTTPS**: SSL 인증서 자동 적용
- **자동 배포**: git push만 하면 자동으로 배포
- **빠른 속도**: GitHub CDN 사용

---

## 참고사항

- GitHub 저장소가 Private이어도 Pages는 공개됩니다
- 커스텀 도메인 연결도 가능합니다 (Settings > Pages > Custom domain)
- 배포 상태는 저장소의 "Actions" 탭에서 확인 가능

---

## 문제 해결

### 404 에러가 나는 경우
- Settings > Pages에서 Branch가 올바르게 설정되었는지 확인
- Actions 탭에서 배포 상태 확인
- 1~2분 대기 후 다시 시도

### 변경사항이 반영되지 않는 경우
- 브라우저 캐시 삭제 (Ctrl + Shift + R)
- Actions 탭에서 배포가 완료되었는지 확인
