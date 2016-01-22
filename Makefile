help:
	@echo "Usage"

build:
	docker build -t roger/penguin-watch-fb .

run:
	# Detached
	# docker run -p 41960:8080 -d roger/penguin-watch-fb

	# Not detached
	docker run -p 41960:8080 -it roger/penguin-watch-fb
