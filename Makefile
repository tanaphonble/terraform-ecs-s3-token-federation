# init terraform
init:
	@app/init.sh

# check execution plan
plan:
	@app/plan.sh

# apply plan
apply:
	@app/apply.sh

# destroying infrastructure
destroy:
	@app/destroy.sh


reload: destroy plan apply
