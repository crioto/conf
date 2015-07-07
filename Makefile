
all: awesome fluxbox bash vim terminator fonts tools
	@echo "Installing everything at once"
	@./install-conf all

awesome:
	@echo "Configuring awesome"
	@./install-conf awesome

fluxbox:
	@echo "Configuring fluxbox"
	@./install-conf fluxbox

bash:
	@echo "Configuring bash"
	@./install-conf bash

vim:
	@echo "Configuring vim"
	@./install-conf vim

terminator:
	@echo "Configuring terminator"
	@./install-conf terminator

fonts:
	@echo "Configuring and downloading fonts"
	@./install-conf fonts

tools:
	@echo "Configuring tools and scripts"
	@./install-conf tools

mrproper:
	@echo "Cleaning up backup files"
	@./cleanup
