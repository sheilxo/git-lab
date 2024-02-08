#makefile for odd or even homework task
.PHONY: ItIsSurelyOdd

ItIsSurelyOdd:
	$(eval FILE_COUNT=$(shell ls . | wc -l))
	@if [ $$(($(FILE_COUNT) % 2)) -eq 1 ]; then \
		echo odd; \
	else \
		echo even; \
	fi
