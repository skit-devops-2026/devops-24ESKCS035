.PHONY: install test build run docker-build docker-up

install:
	npm install || true

test:
	npm test

build:
	npm run lint

run:
	npx serve .

docker-build:
	docker build -t ghcr.io/skit-devops-2026/devops-24eskcs035:local --build-arg GIT_COMMIT=$$(git rev-parse --short HEAD 2>/dev/null || echo local) .

docker-up:
	docker compose up --build -d