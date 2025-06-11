#defining docker-compose cmd
Docker_Compose := docker-compose

#build target
build:
	$(Docker_Compose) build 

#run target
run:
	$(Docker_Compose) up -d

#stop target
stop:
	$(Docker_Compose) down

#clean target
clean: stop
	$(Docker_Compose) rm -f
	docker system prune -f

