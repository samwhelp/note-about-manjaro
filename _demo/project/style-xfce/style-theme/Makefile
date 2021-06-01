
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make all'
	@echo
	@echo '	$$ make theme-numix-blue'
	@echo
	@echo '	$$ make theme-honda-super-cub-wm-pastel-dark'
	@echo


.PHONY: help


all: theme-numix theme-numix-blue theme-shades-of-gray theme-honda-super-cub-wm-pastel-dark

.PHONY: all


theme-numix:
	make -C theme-numix install
.PHONY: theme-numix


theme-numix-blue:
	make -C theme-numix-blue install
.PHONY: theme-numix-blue


theme-shades-of-gray:
	make -C theme-shades-of-gray install
.PHONY: theme-shades-of-gray


theme-honda-super-cub-wm-pastel-dark:
	make -C theme-honda-super-cub-wm-pastel-dark install
.PHONY: theme-honda-super-cub-wm-pastel-dark
