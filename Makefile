# init terraform
init:
	@app/init.sh

# check execution plan
plan:
	@app/plan.sh

# apply plan
apply:
	@app/apply.sh
	@app/output.sh

# deploying new infrastructure to AWS
deploy:
	@app/plan.sh
	@app/apply.sh
	@app/output.sh

# destroying infrastructure
destroy:
	@app/destroy.sh

# checkout infrastructure's output
output:
	@app/output.sh

reload: destroy plan apply
