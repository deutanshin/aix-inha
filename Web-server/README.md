# aix-inha 웹 서버


## 🏗️ 시스템 아키텍처

* **언어/프레임워크**: `PHP(8.1)` / `WordPress(6.7)`
* **데이터베이스**: `MySQL(8.0)`
* **배포 환경**: `Ubuntu (18.04)`
* **CI**: `Docker(24.0.2)/Docker-Compose(2.39.1)`

graph TD
    subgraph "애플리케이션 스택"
        WP["WordPress (6.7)"]
        PHP["PHP (8.1)"]
        Apache["Apache 웹 서버"]
    end

    subgraph "데이터베이스"
        MySQL["MySQL (8.0)"]
    end

    subgraph "배포 및 관리"
        Ubuntu["Ubuntu (18.04)<br>호스트 OS"]
        Docker["Docker (24.0.2)"]
        DockerCompose["Docker-Compose (2.39.1)"]
    end

    WP --> PHP
    PHP --> Apache
    WP -- "데이터 저장/조회" --> MySQL

    DockerCompose -- "정의 및 오케스트레이션" --> Docker
    Docker -- "컨테이너 관리" --> Apache & MySQL
    Ubuntu -- "기반 환경 제공" --> Docker
    
    style WP fill:#f9f,stroke:#333,stroke-width:2px;
    style PHP fill:#cff,stroke:#333,stroke-width:2px;
    style Apache fill:#ffc,stroke:#333,stroke-width:2px;
    style MySQL fill:#ccf,stroke:#333,stroke-width:2px;
    style Ubuntu fill:#e0e0e0,stroke:#333,stroke-width:2px;
    style Docker fill:#ade,stroke:#333,stroke-width:2px;
    style DockerCompose fill:#add,stroke:#333,stroke-width:2px;
## 📦 배포 방법
* **경로**: `~/docker_test_wp`

* **배포**: `docker compose up / docker-compose up`

* **종료**: `docker compose down / docker-compose down`



## ❓ 문제 해결 / FAQ

- **Q. `npm install` 시 오류가 발생합니다.**
  - A. Node.js 버전이 맞는지 확인해 주세요. `nvm`을 사용하여 프로젝트에 맞는 버전(v18.x)을 사용하는 것을 권장합니다.
- **Q. 데이터베이스 연결에 실패합니다.**
  - A. `.env` 파일의 DB 정보가 정확한지, Docker 컨테이너가 정상적으로 실행 중인지 확인해 주세요. (`docker ps` 명령어 사용)

## 📁 디렉토리 구조

```
.
├── config/       # 환경 설정 파일
├── controllers/  # 요청 처리 로직 (Controller)
├── models/       # 데이터베이스 모델
├── routes/       # 라우팅 설정
├── services/     # 비즈니스 로직
└── app.js        # 서버 진입점 파일
```
