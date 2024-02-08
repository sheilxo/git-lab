#makefile for sandstorm question

#declares a fake target; fake or phony targets aren't actual files
# they are merely names for a recipe to be executed and prevent name clashes
.PHONY: check_sandstorm

#target definition for check_sandstorm
check_sandstorm:
#@ before the 'if' means command won't be echoed in the terminal before execution
# the same 'if' statement checks if 'sandstorm.txt' is newer than calm.txt
#if sandstorm.txt is actually newer, it will echoe a warning saying "sandstorm is active!"
	@if [ sandstorm.txt -nt calm.txt ]; then \
		echo "warning, a sandstorm is active!"; \
	fi
