all:
	rm -rf *~ *.beam erl_crash*;
	erlc *.erl;
	erl -s application_deployment_check start;
	rm -rf *~ *.beam erl_crash*;
	git add *;
	git commit -m $(m);
	git push;
	echo Ok there you go!

