#!/usr/bin/env bash

set -e

echo "Installing dependencies..."

cp .env.example .env || true

docker compose pull || true

echo "Done."