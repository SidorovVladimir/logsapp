# run:
# 	docker run -d -p 3000:4200 --env-file ./config/.env --rm --name logsapp logsapp:env
run:
	docker run -d -p 3000:3000 -v logs:/app/data --rm --name logsapp logsapp:volumes
stop:
	docker stop logsapp
run-dev:
	docker run -d -p 3000:3000 -v "/home/vladimir/logs-app:/app" -v /app/node_modules -v logs:/app/data --rm --name logsapp logsapp:volumes