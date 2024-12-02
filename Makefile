all: run-playbook

run-playbook:
	ansible-playbook -i hosts pb.stress.yaml -e "@localvars.yaml"
	exit 0