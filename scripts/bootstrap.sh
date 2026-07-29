#!/usr/bin/env bash

set -e

echo "🚀 Bootstrapping Production Template..."

echo ""
echo "📁 Creating directories..."

mkdir -p \
apps/api/src \
apps/web \
apps/worker \
infrastructure/nginx \
infrastructure/postgres \
infrastructure/redis \
infrastructure/monitoring \
docs/handbook/{linux,docker,nginx,networking,postgresql,redis,github-actions,monitoring,security} \
docs/adr \
docs/runbooks \
docs/architecture \
docs/roadmap \
docs/journal \
scripts \
.github/workflows

echo "📄 Creating files..."

touch \
README.md \
LICENSE \
.gitignore \
.env.example \
docker-compose.yml \
Makefile \
docs/ENGINEERING_PRINCIPLES.md \
docs/ENGINEERING_MANIFESTO.md \
docs/roadmap/ROADMAP.md \
docs/architecture/PLATFORM.md \
docs/runbooks/DEPLOY.md \
docs/runbooks/ROLLBACK.md \
docs/runbooks/RESTORE_DATABASE.md \
docs/handbook/docker/README.md \
docs/handbook/linux/README.md \
docs/handbook/nginx/README.md \
docs/handbook/networking/README.md \
docs/handbook/postgresql/README.md \
docs/handbook/redis/README.md \
docs/handbook/github-actions/README.md \
docs/handbook/monitoring/README.md \
docs/handbook/security/README.md

echo ""
echo "✅ Project structure created!"
echo ""
echo "📂 Generated tree:"
echo ""

find . \
-not -path "./.git/*" \
-not -path "./node_modules/*" \
| sort

echo ""
echo "🎉 Bootstrap complete."