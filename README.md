# 🎵 오락가락 (OrakGarak)

> **내 목소리에 딱 맞는 노래를 찾아보세요**  
> AI 기술을 활용한 맞춤형 음성 분석 및 노래 추천 플랫폼

## 📋 프로젝트 개요

오락가락은 사용자의 음성을 AI로 분석하여 음역대와 음색에 맞는 노래를 추천하고, 개인 앨범 제작 및 음악 커뮤니티 기능을 제공하는 웹 애플리케이션입니다.

### 🎯 주요 기능

- **🎤 음성 분석**: 실시간 음성 녹음 및 AI 분석
- **🎵 맞춤 추천**: 음역대/음색 기반 개인화된 노래 추천
- **💿 앨범 제작**: 녹음한 곡들로 나만의 앨범 생성
- **🎪 몰입 재생**: 3D 캐러셀을 활용한 몰입형 음악 재생 경험
- **👥 커뮤니티**: 다른 사용자와 앨범 공유 및 소통

## 🛠 기술 스택

### Frontend

- **React 18** + **TypeScript**
- **Material-UI (MUI)** - 기본 UI 컴포넌트
- **Tailwind CSS** - 커스텀 스타일링 및 애니메이션
- **React Router** - 라우팅
- **Zustand** - 상태 관리
- **React Hooks** - 커스텀 훅 (useAudio, useAuth 등)

### Backend

- **Spring Boot 3.5** + **Java 17**
- **MySQL**, **Redis** - 데이터베이스, 캐시
- **Kafka** - 파일 업로드 후처리와 AI 분석 요청 파이프라인
- **FastAPI** - 음성 특징 추출과 노래 추천(Python)
- **JWT** - 인증
- **Google OAuth** - 소셜 로그인

## 📁 프로젝트 구조

```
front/
├── src/
│   ├── components/           # 재사용 가능한 컴포넌트
│   │   ├── auth/            # 인증 관련 컴포넌트
│   │   │   └── AuthGuard.tsx # 라우트 보호 컴포넌트
│   │   ├── album/           # 앨범 관련 컴포넌트
│   │   │   └── ImmersivePlaybackModal.tsx # 3D 몰입 재생 모달
│   │   └── common/          # 공통 컴포넌트
│   │       ├── Header.tsx   # 메인 헤더
│   │       └── SimpleHeader.tsx # 간소화된 헤더
│   ├── hooks/               # 커스텀 훅
│   │   ├── useAuth.ts       # 인증 관련 훅
│   │   └── useAudio.ts      # 오디오 재생 훅
│   ├── pages/               # 페이지 컴포넌트
│   │   ├── LandingPage.tsx  # 랜딩 페이지 (음악적 디자인)
│   │   ├── OnboardingRangePage.tsx # 음역대 분석 페이지 (게임형 UI)
│   │   ├── AlbumCreatePage.tsx # 앨범 제작 페이지
│   │   ├── AlbumDetailPage.tsx # 앨범 상세 페이지
│   │   ├── FeedPage.tsx     # 피드 페이지 (소셜 UI)
│   │   └── MyPage.tsx       # 마이페이지 (프로필 카드 디자인)
│   ├── services/            # API 서비스
│   │   ├── backend.ts       # 백엔드 API 호출
│   │   └── googleAuth.ts    # 구글 인증 서비스
│   ├── stores/              # 상태 관리
│   │   ├── authStore.ts     # 인증 상태
│   │   ├── albumStore.ts    # 앨범 상태
│   │   └── uiStore.ts       # UI 상태
│   ├── styles/              # 스타일 파일
│   │   └── immersive-playback.css # 3D 캐러셀 스타일
│   ├── types/               # 타입 정의
│   │   └── user.ts          # 사용자 관련 타입
│   └── data/                # 더미 데이터
│       ├── musicDatabase.ts # 음악 데이터베이스
│       └── recommendationData.ts # 추천 데이터
├── tailwind.config.js       # Tailwind 설정
└── package.json
```

## 🎨 디자인 시스템

### 색상 팔레트

- **Primary**: 보라색 계열 (`#9d00ff`, `#764ba2`)
- **Secondary**: 파란색 계열 (`#00e5ff`, `#667eea`)
- **Accent**: 핑크색 계열 (`#ff6b9d`, `#ff8a80`)
- **Background**: 다크/라이트 테마 지원

### UI 테마별 적용

- **🎮 게임형 UI**: 음역대 추천 페이지 (`OnboardingRangePage`)
- **🎨 앨범 제작 디자인**: 앨범 관련 페이지 (`AlbumCreatePage`)
- **👥 소셜 UI**: 피드 페이지 (`FeedPage`)
- **👤 프로필 카드 디자인**: 마이페이지 (`MyPage`)

## 🚀 주요 기능 상세

### 1. 🎤 몰입 재생 (Immersive Playback)

- **3D 캐러셀**: CSS Transform을 활용한 입체적 카드 배치
- **실시간 오디오**: Web Audio API 기반 음악 재생
- **인터랙티브 조작**: 드래그, 터치, 키보드 네비게이션
- **반응형 디자인**: 모바일/데스크톱 최적화

### 2. 🔐 인증 시스템

- **Google OAuth**: 구글 계정 연동 로그인
- **임시 로그인**: 개발용 더미 인증 기능
- **라우트 보호**: `AuthGuard` 컴포넌트로 인증된 사용자만 접근

### 3. 🎵 음악 관리

- **앨범 생성**: 트랙 추가/삭제/편집 기능
- **커버 아트**: AI 생성 앨범 커버 (예정)
- **재생 통계**: 점수, 좋아요, 재생 횟수 추적

## 🛠 개발 환경 설정

### 필수 요구사항

- Node.js 18+
- npm 또는 yarn

### 설치 및 실행

```bash
# 의존성 설치
npm install

# 개발 서버 실행
npm run dev

# 빌드
npm run build
```

### 환경 변수

```env
VITE_GOOGLE_CLIENT_ID=your_google_client_id
VITE_API_BASE_URL=http://localhost:3000/api
```

## 📱 반응형 디자인

- **Desktop**: 1200px+ (풀 기능 지원)
- **Tablet**: 768px - 1199px (터치 최적화)
- **Mobile**: 320px - 767px (모바일 우선 설계)

## 🎯 성능 최적화

- **메모이제이션**: `useMemo`, `useCallback` 활용
- **코드 스플리팅**: React.lazy를 통한 지연 로딩
- **이미지 최적화**: WebP 포맷 지원
- **번들 최적화**: Vite 기반 빠른 빌드

## 🔧 개발 도구

- **ESLint**: 코드 품질 관리
- **Prettier**: 코드 포맷팅
- **TypeScript**: 타입 안정성
- **Vite**: 빠른 개발 서버 및 빌드

---

## 🧾 Git Commit Convention

### ✅ Commit Message 구조

```
<타입>: <간단한 설명>

본문 (선택)
```

### 📌 사용 가능한 타입(Type)

| 타입       | 설명                                              |
| ---------- | ------------------------------------------------- |
| `feat`     | 새로운 기능 추가                                  |
| `fix`      | 버그 수정                                         |
| `docs`     | 문서 수정 (README 등)                             |
| `style`    | 코드 포맷팅, 세미콜론 누락 등 기능 변화 없는 수정 |
| `refactor` | 코드 리팩토링 (기능 변화 없음)                    |
| `test`     | 테스트 코드 추가/수정                             |
| `chore`    | 빌드 업무, 패키지 매니저 설정 등 기타 변경        |
| `perf`     | 성능 개선                                         |
| `ci`       | CI 설정 수정                                      |
| `build`    | 빌드 관련 파일 수정                               |

### ✏️ 예시

```
feat: 몰입 재생 3D 캐러셀 기능 구현

Canvas 기반 음악 웨이브 애니메이션과 드래그/터치 네비게이션 추가
```

```
fix: 모바일 터치 이벤트 스크롤 충돌 해결

드래그 중 배경 스크롤 방지 및 자동 복원 로직 구현
```

```
perf: 앨범 트랙 카드 생성 로직 최적화

useState 대신 useMemo로 메모이제이션 적용하여 렌더링 성능 개선
```

### 📖 커밋 메시지 작성 규칙

1. 제목은 **50자 이내**로 작성, 첫 글자는 소문자.
2. 제목 끝에 `마침표(.)` 쓰지 않기.
3. **한글 또는 영어** 자유롭게 사용 가능 (팀 합의 기준).
4. 본문이 있다면, 제목과 본문 사이에 한 줄 공백 삽입.
5. 본문은 **무엇을, 왜** 변경했는지 설명.

---

## 🌿 Git 브랜치 전략

### 📌 브랜치 종류

| 브랜치 이름 | 용도                                   |
| ----------- | -------------------------------------- |
| `main`      | 실제 배포되는 운영 브랜치 (최종 제품)  |
| `develop`   | 통합 개발 브랜치 (모든 기능이 merge됨) |
| `feature/*` | 새로운 기능 개발용 브랜치              |
| `fix/*`     | 버그 수정용 브랜치                     |
| `hotfix/*`  | 운영 중 긴급 수정 브랜치               |
| `release/*` | 배포 준비 브랜치 (버전 태깅 등 포함)   |

### 🛠 브랜치 네이밍 규칙

- `feature/immersive-playback`
- `fix/mobile-touch-events`
- `hotfix/audio-playback-crash`
- `release/v1.0.0`

### 🔁 브랜치 사용 흐름

1. 기능 개발 시:  
   → `develop` 브랜치에서 `feature/기능명` 브랜치 생성 후 작업  
   → 완료되면 `develop`에 Pull Request로 merge

2. 버그 수정 시:  
   → `develop` 또는 `main` 기준으로 `fix/버그명` 브랜치 생성 후 수정  
   → 완료되면 `develop`에 merge (운영 이슈면 `main`에 바로 hotfix 가능)

3. 배포 준비 시:  
   → `develop` → `release/vX.X.X` 브랜치 생성  
   → 테스트 완료 후 `main`에 merge + 버전 태깅

4. 긴급 수정 시:  
   → `main`에서 `hotfix/이슈명` 브랜치 생성  
   → 수정 후 `main` + `develop`에 각각 merge

---

## 일정과 작업 방식

SSAFY 13기 교육 과정에서 6인 팀(프론트엔드 2, 백엔드 3, AI 1)이 2025년 8월 25일부터 9월 29일까지 5주 동안 만들었습니다.

| 기간 | 한 일 | 산출물 |
|---|---|---|
| 1주차 (08.25~09.01) | 저장소와 Docker Compose, 폴더 구조 준비 | 모노레포 구조, 개발 환경 |
| 2주차 (09.02~09.08) | Spring Boot, React 초기 세팅, 멜스펙트로그램 추출 구현 | 백엔드/프론트 뼈대, 음성 특징 추출 프로토타입 |
| 3주차 (09.09~09.15) | 파일 업로드, 녹음, 앨범, 마이페이지 등 핵심 기능 구현 | 핵심 기능 모듈 |
| 4주차 (09.16~09.22) | 기능 이어 붙이기와 통합 | 통합된 서비스 |
| 5주차 (09.23~09.29) | 모니터링, Kafka 이벤트 파이프라인, 마무리 수정 | Prometheus·Grafana·Loki 모니터링, Kafka 파이프라인 |

`git log` 기준 전체 커밋 702개 중 주차별로 7, 9, 139, 226, 321개가 찍혀 있습니다. 3주차부터 커밋이 급격히 늘었습니다.

작업은 원래 GitLab 이슈와 MR로 관리했습니다. 저장소에 이슈 템플릿(`.gitlab/issue_templates/FEAT_ISSUE.md`)과 MR 템플릿(`.gitlab/merge_request_templates/MR_TEMPLATE.md`)이 남아 있습니다. 브랜치는 `Feature/updateFE`, `Feature/mypage`처럼 설명형 이름을 주로 썼습니다. 문서화는 처음엔 Swagger로 API를 전부 문서화했지만 개발 중 API가 자주 바뀌면서 2주차부터 플로우차트로 전체 흐름만 먼저 공유하고 세부 스펙은 구현하면서 맞추는 방식으로 바꿨습니다.

프로젝트를 만든 배경과 판단 과정은 [블로그 소개 글](https://dj258255.github.io/IT-Oasis/blog/project/orakgarak/orakgarak-retrospective/)에 더 자세히 적었습니다.

---
## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 있습니다.
