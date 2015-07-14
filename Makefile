PIDFILE := tmp/server.pid
PORT := 4567

default: test stop

test: start
	curl -i localhost:$(PORT) | grep Location

start: $(PIDFILE)

stop:
	kill $(shell cat $(PIDFILE))

$(PIDFILE): tmp/
	rackup --daemonize --pid $(PIDFILE) --port $(PORT) config.ru
	sleep 1

tmp/:
	mkdir -p tmp/

