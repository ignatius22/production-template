# Engineering Principles

These principles guide every architectural and operational decision in this repository.

---

## 1. Docker is the Runtime

Applications must run inside Docker containers.

❌ Avoid

npm start
pm2 start app.js

✅ Preferred

docker compose up -d

Why?

- Reproducible environments
- Consistent deployments
- Easier scaling
- Easier migration

---

## 2. Infrastructure as Code

Infrastructure belongs in Git.

Changes to:

- Nginx
- Docker Compose
- GitHub Actions
- Deployment scripts

must be committed and reviewed.

No undocumented server changes.

---

## 3. One Command to Run Everything

A new developer should be able to run:

make up

and have the platform running.

---

## 4. Every Service Has a Health Check

Every application exposes:

GET /health

Example response:

{
  "status": "ok",
  "version": "1.0.0",
  "uptime": 12345
}

Health checks are required for deployments.

---

## 5. Secrets Never Enter Git

Never commit:

- .env
- API keys
- Database passwords
- SSH keys

Use:

- .env.example
- GitHub Secrets
- Environment variables

---

## 6. Containers Are Disposable

Never SSH into a container to "fix" it.

If something is broken:

- Fix the code
- Rebuild the image
- Redeploy

---

## 7. Backups Are Part of the System

Every persistent service must have a documented backup and restore procedure.

Backups that haven't been tested are not backups.

---

## 8. Automation Before Manual Work

If a task is repeated more than twice:

Automate it.

Examples:

- Deployments
- Backups
- SSL renewal
- Health checks

---

## 9. Observe Before You Optimise

Use metrics before making performance decisions.

Measure:

- CPU
- Memory
- Latency
- Error rate

Don't optimise based on guesses.

---

## 10. Design for Reuse

Every component should answer one question:

"Can this be reused in the next five projects?"

If the answer is no, reconsider the design.