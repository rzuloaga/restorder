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
	@make echo-help title="Para saber más sobre la versión de Symfony, ejecutar:" 		cmd="	about"
	@make echo-help title="Para saber qué se puede lanzar desde Symfony CLI, ejecutar:" cmd="	cli-help"
	@make echo-help title="Lanzar tests unitarios, ejecutar:" 							cmd="	unit-test"
	@make echo-help title="Lanzar tests de aceptación BDD, ejecutar:" 					cmd="	behat-test"
	@make echo-help title="Lanzar todos los tests, ejecutar:" 							cmd="	test"

about: CMD=about

cli-help about:
	@php bin/console $(CMD)

# ⚒ PHPUnit Testing
unit-test:
	bin/phpunit

# 🥒 Behat Acceptance tests
behat-test:
	vendor/bin/behat 

# Run all tests
test:
	@make unit-test behat-test
