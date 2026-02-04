# Awash Maskey Portfolio Site

Modern, containerized personal portfolio website built with Bootstrap template (iPortfolio).

Live demo: https://awashmasketech.co.uk

![Portfolio Screenshot](https://raw.githubusercontent.com/AwashAwash/iportfolio-sites/main/screenshots/homepage.png)
<!-- Upload 1–3 screenshots later via GitHub web interface -->

## Tech Stack

- **Frontend**: HTML5, CSS3, Bootstrap 5, JavaScript
- **Web Server**: Nginx (alpine)
- **Containerization**: Docker + Docker Compose
- **Hosting**: Ubuntu 24.04 LTS VPS (Ionos)
- **CDN & Security**: Cloudflare (Proxy, Flexible SSL, HSTS)
- **CI / Security Scanning**: Trivy (planned GitHub Actions)
- **Version Control**: Git + GitHub

## Security Features Implemented

- Non-root user + SSH key-only authentication
- UFW firewall with Cloudflare IP whitelisting
- Fail2ban
- Security headers (X-Content-Type-Options, X-Frame-Options, X-XSS-Protection)
- HTTPS enforced via Cloudflare + HSTS
- Containerized deployment (least privilege principle)

## Local Development

```bash
# Clone repo
git clone https://github.com/AwashAwash/iportfolio-sites.git
cd iportfolio-sites



## Security Scanning (Trivy)

Regular vulnerability scanning is performed on the container image.

**Latest scan results** (on `awashawash/awash-portfolio:latest`):

- Total vulnerabilities: X
- CRITICAL: 0
- HIGH: Y
- MEDIUM: Z
- LOW: W

Command used:
```bash
trivy image --severity CRITICAL,HIGH awashawash/awash-portfolio:latest

# Start
docker compose up -d

# Open http://localhost



## Monitoring (Netdata)

Real-time VPS & container monitoring dashboard.

- Dashboard: https://netdata.awashmasketech.co.uk (or http://217.154.44.73:19999)
- Metrics: CPU, RAM, Disk, Network, Docker stats



## Real-Time Monitoring (Netdata)

Live dashboard with CPU, RAM, disk, network, Docker stats, and more.

- Dashboard: https://netdata.awashmasketech.co.uk (or http://217.154.44.73:19999)
- Secured via Cloudflare Tunnel / Access
- Metrics updated every second
