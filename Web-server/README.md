# aix-inha 웹 서버


## 🏗️ 시스템 아키텍처

* **언어/프레임워크**: `PHP(8.1)` / `WordPress(6.7)`
* **데이터베이스**: `MySQL(8.0)`
* **배포 환경**: `Ubuntu (18.04)`
* **CI**: `Docker(24.0.2)/Docker-Compose(2.39.1)`

```mermaid
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
```

## 📦 배포 방법
* **경로**: `~/docker_test_wp`

* **배포**: `docker compose up -d / docker-compose up -d`

* **로그 확인**: `docker-compose logs -f`

* **종료**: `docker compose down / docker-compose down`

## 필수 백업 파일

MySQL 데이터

WordPress 프로젝트 파일

HTTPS SSL 인증서 / Apache 설정 파일


## ❓ Issues

- **1. 설정 변경 후 재배포 시 속도 저하**
  - WordPress의 플러그인 충돌로 인한 성능저하가 유력합니다. 플러그인을 하나씩 켜보며 확인

- **2. HTML 숏 코드 가독성**
  - CSS와 HTML 코드를 같이 삽입하면 깨지는 현상(확인 중)

