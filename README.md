## How to Run This Project

### Prerequisites

- Make sure Docker and Docker Compose are installed on your machine.
- SSL certificates placed in `./certs`.
- All config files (`authelia/config`, `promtail-config.yml`, `prometheus.yml`, `nginx.conf`, `enable_metrics.sh`) are present in the project directory.

### Steps to Launch

1. Make the Gitea metrics enable script executable:

```

chmod +x enable_metrics.sh

```

2. Start all services in detached mode:

```

docker-compose up -d

```

3. Verify all containers are up:

```

docker ps

```

---

### How to Check Logs

- To view logs of all containers:

```

docker-compose logs

```

- To follow logs in real-time for a specific service (e.g., Grafana):

```

docker-compose logs -f grafana

```


---

### User Flow

- Access the services via:

  - Grafana: `https://YOUR_DOMAIN_OR_IP/grafana/`  
  - Gitea: `https://YOUR_DOMAIN_OR_IP/gitea/`  

- It will redirect to Authelia to authenticate via Single Sign-On (SSO).

- After authentication, you can access Grafana and Gitea.

- Prometheus scrapes metrics exposed by Gitea and other services, viewable in Grafana dashboards.

> **Note:** Replace `YOUR_DOMAIN_OR_IP` with your actual IP address or domain as configured.

---

### To Stop the Stack

```

docker-compose down

```
