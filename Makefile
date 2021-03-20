PAAS_HOST?=piku@changeme.domain
APP_NAME?=nodered

deploy:
	git push production main

destroy:
	ssh $(PAAS_HOST) destroy $(APP_NAME)

restart:
	ssh $(PAAS_HOST) restart $(APP_NAME)

logs:
	ssh $(PAAS_HOST) logs $(APP_NAME)

