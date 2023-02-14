# Target por defecto
.DEFAULT_GOAL := help

echo-info:
	@echo "\033[01;32m$(text)\033[00;00m"

echo-warn:
	@echo "\033[01;33m$(text)\033[00;00m"

echo-error:
	@echo "\033[01;31m$(text)\033[00;00m"

echo-title:
	@echo "\033[01;37m$(text)\033[00;00m"

echo-link:
	@echo "\033[01;34m$(text)\033[00;00m"

echo-help:
	@make echo-info text="$(title)"
	@make echo-warn text="$(cmd)"
	@echo ""

help:
	@make echo-info text="Ayuda:"
	@echo ""
	@make echo-help title="Información sobre Symfony, ejecutar:" cmd="		info"

info:
	@php bin/console about

# ⚒ PHPUnit Testing
test:
	bin/phpunit
