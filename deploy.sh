#!/bin/bash
set -e
cd /home/Activation-Licenses
git pull origin main
docker compose up -d --build
sleep 5
docker compose ps
docker compose logs --tail 30 web
