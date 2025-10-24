### 사용법

#### inventory.ini.example 을 inventory.ini로 복사해서 사용

#### inventory.ini 파일 수정
관리노드 ip ansible_port=<포트번호> ansible_user=<유저네임>

#### 실행
`ansible-playbook -i inventory deploy_speedtest.yml`

