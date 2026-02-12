 Awash Maskey Portfolio Site

Modern, containerized personal portfolio website built with Bootstrap template (iPortfolio).

Live demo: https://awashmasketech.co.uk

![Portfolio Screenshot](https://raw.githubusercontent.com/AwashAwash/iportfolio-sites/main/screenshots/homepage.png)
<!-- Upload 1–3 screenshots later via GitHub web interface -->

 Tech Stack

- Frontend: HTML5, CSS3, Bootstrap 5, JavaScript
- Web Server: Nginx (alpine)
- Containerization: Docker + Docker Compose
- Hosting: Ubuntu 24.04 LTS VPS (Ionos)
- CDN & Security: Cloudflare (Proxy, Flexible SSL, HSTS)
- CI / Security Scanning: Trivy (planned GitHub Actions)
- Version Control: Git + GitHub

Security Features Implemented

- Non-root user + SSH key-only authentication
- UFW firewall with Cloudflare IP whitelisting
- Fail2ban
- Security headers (X-Content-Type-Options, X-Frame-Options, X-XSS-Protection)
- HTTPS enforced via Cloudflare + HSTS
- Containerized deployment (least privilege principle)

 Local Development


 Clone repo
git clone https://github.com/AwashAwash/iportfolio-sites.git
cd iportfolio-sites



 Security Scanning (Trivy)

Regular vulnerability scanning is performed on the container image.

Latest scan results (on `awashawash/awash-portfolio:latest`):

- Total vulnerabilities: X
- CRITICAL: 0
- HIGH: Y
- MEDIUM: Z
- LOW: W

Command used:

trivy image --severity CRITICAL,HIGH awashawash/awash-portfolio:latest

 Start
docker compose up -d

 Open http://localhost



 Monitoring (Netdata)

Real-time VPS & container monitoring dashboard.

- Dashboard: https://netdata.awashmasketech.co.uk (or http://217.154.44.73:19999)
- Metrics: CPU, RAM, Disk, Network, Docker stats



 Real-Time Monitoring (Netdata)

Live dashboard with CPU, RAM, disk, network, Docker stats, and more.

- Dashboard: https://netdata.awashmasketech.co.uk (or http://217.154.44.73:19999)
- Secured via Cloudflare Tunnel / Access
- Metrics updated every second



## CI/CD Pipeline (Jenkins)

[![Jenkins Pipeline](https://img.shields.io/badge/CI-Jenkins-brightgreen?style=for-the-badge&logo=jenkins)]http://217.154.44.75:8081/job/simple-showcase-test/()

Automated multi-stage CI pipeline with:
- Parallel quality checks (lint, tests, security)
- Artifact archiving
- Manual approval gate for production
- Environment parameters & post-build cleanup

-  Screenshots

Pipeline Stages View
![Pipeline Stages](screenshots/pipeline-stages.png)

Console Output (running build)
![Console Output](screenshots/console-output.png)

 Approval Gate (manual production approval)
![Approval Gate](screenshots/approval-gate.png)

 Successful Build
![Success Message](screenshots/success-build.png)

Status
[![Jenkins Pipeline](https://img.shields.io/badge/CI-Jenkins-brightgreen?style=for-the-badge&logo=jenkins)](https://your-jenkins-url:8081/job/portfolio-ci-showcase/)
