run-dev:
	docker-compose -f docker-compose-dev.yml up

### LOCAL (prod config)

build-local:
	cd frontend && $(MAKE) build-local
	cd server && $(MAKE) build

run-local:
	ENV=local docker-compose -f docker-compose-production.yml up --build -d

build-production:
	cd frontend && $(MAKE) build-production
	cd server && $(MAKE) build	

run-production:
	ENV=production docker-compose -f docker-compose-production.yml up --build -d
	
log-all:
	docker-compose -f docker-compose-production.yml logs -f
