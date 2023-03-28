git:
	git pull
dev: git
	cd aws-parameters;terraform init -backend-config=env-dev/state.tfvars
	cd aws-parameters;terraform apply -auto-approve -var-file=env-dev/main.tfvars
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars
