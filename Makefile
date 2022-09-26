SHELL = /bin/bash
.DEFAULT_GOAL := help


# This will output the help for each task.
help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo "\n  Allowed for overriding next properties:\n\n\
		Usage example:\n\
	    	make up"
# --- [ Main ] --------------------------------------------------------------------------------------------------
role-init:
	ansible-galaxy role init ${1}

playbook-run:
	ansible-playbook -i ${inventory} --ask-vault-pass playbook.yaml
